require 'dotenv/load'
require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'site_prism'
require 'capybara/rspec'
#require 'capybara-screenshot/rspec'
require 'selenium-webdriver'

# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# The generated `.rspec` file contains `--require spec_helper` which will cause
# this file to always be loaded, without a need to explicitly require it in any
# files.
#
# Given that it is always loaded, you are encouraged to keep this file as
# light-weight as possible. Requiring heavyweight dependencies from this file
# will add to the boot time of your test suite on EVERY test run, even for an
# individual file that may not need all of that loaded. Instead, consider making
# a separate helper file that requires the additional dependencies and performs
# the additional setup, and require it from the spec files that actually need
# it.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
def setup
  selenium_url = ENV['SELENIUM_HUB_URL']
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome

  Capybara.app_host = ENV['QA_URL']
  #Capybara.run_server = false

  Capybara.register_driver :remote_browser do |app|
    Capybara::Selenium::Driver.new(
      app,
      :browser => :remote,
      url: selenium_url,
      desired_capabilities: capabilities
    )
  end

  Capybara.default_driver = :remote_browser
  Capybara.javascript_driver = :remote_browser
end

RSpec.configure do |config|
  config.include Capybara::DSL, :type => :feature
  config.expect_with :rspec do |expectations|
    # This option will default to `true` in RSpec 4. It makes the `description`
    # and `failure_message` of custom matchers include text for helper methods
    # defined using `chain`, e.g.:
    #     be_bigger_than(2).and_smaller_than(4).description
    #     # => "be bigger than 2 and smaller than 4"
    # ...rather than:
    #     # => "be bigger than 2"
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  # This option will default to `:apply_to_host_groups` in RSpec 4 (and will
  # have no way to turn it off -- the option exists only for backwards
  # compatibility in RSpec 3). It causes shared context metadata to be
  # inherited by the metadata hash of host groups and examples, rather than
  # triggering implicit auto-inclusion in groups with matching metadata.
  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.before(:each) do
    Capybara.current_session.driver.browser.manage.window.resize_to(1024, 768)
  end
  config.after(:each) do
    Capybara.current_session.driver.quit
  end

  # #Takes screenshot on failure (Currently, not working as expected)
  # Capybara::Screenshot.register_driver(:remote_browser) do |driver, path|
  #   driver.browser.manage.window.resize_to(1_380, 1080)
  #   driver.browser.save_screenshot(path)
  #   # driver.browser.save_screenshot("test_failures/screenshot_#{Time.now}.png")
  #   # driver.browser.save_screenshot("test_failures/screenshot_#{Time.now}.html")
  # end
end

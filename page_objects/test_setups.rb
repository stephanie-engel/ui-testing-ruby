require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'selenium-webdriver'
# require 'site_prism'


if ENV['SELENIUM_REMOTE_HOST']
  Capybara.javascript_driver = :selenium_remote_chrome
  Capybara.register_driver "selenium_remote_chrome_debug".to_sym do |app|
    Capybara::Selenium::Driver.new(
      dev/shm:/dev/shm,
      browser: :remote,
      url: "http://#{ENV['SELENIUM_REMOTE_HOST']}:4444/wd/hub",
      desired_capabilities: :chrome)
  end
end

# #TODO! This is a WIP
# Capybara.register_driver :docker_chrome do |app|
#
#   Capybara::Selenium::Driver.new(app, {
#       browser: :remote,
#       url: "#{ENV['SELENIUM_URL']}/wd/hub",
#       desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome
#   })
# end
#
# #Capybara.default_driver = :selenium
#
# def setup_driver
#   unless ENV['SELENIUM_URL'].nil? || ENV['SELENIUM_URL'].empty?
#     Capybara.current_driver = :docker_chrome
#     #Capybara.run_server = false
#     Capybara.javascript_driver = :docker_chrome
#     # Capybara.server_port = 55555
#     # Capybara.server_host = "#{ENV['LOCAL_IP']}"
#     Capybara.app_host = "https://qa.yoursite.com"
#   end
# end

# Capybara.current_driver = :selenium
# Capybara.run_server = false
# Capybara.app_host = ENV.fetch("TESTED_HOST")

# class ProductionTestCase < Minitest::Test
#   include Capybara::DSL

  def teardown
    Capybara.reset_sessions!
  end
end

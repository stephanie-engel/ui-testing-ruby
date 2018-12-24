require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

class MenuDresses < SitePrism::Section
  element :lnk_casual_dresses, :xpath, "//*[text()='Casual Dresses']"
  element :lnk_evening_dresses, :xpath, "//*[text()='Evening Dresses']"
  element :lnk_summer_dresses, :xpath, "//*[text()='Summer Dresses']"
end
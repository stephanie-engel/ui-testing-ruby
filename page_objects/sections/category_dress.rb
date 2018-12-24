require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

class CategoryDress < SitePrism::Section
  element :chk_casual_dresses, :xpath, "//*[@id='layered_category_9']"
  element :chk_evening_dresses, :xpath, "//*[@id='layered_category_10']"
  element :chk_summer_dresses, :xpath, "//*[@id='layered_category_11']"
end
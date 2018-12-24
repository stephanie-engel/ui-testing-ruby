require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

class Size < SitePrism::Section
  element :chk_s, :xpath, "//*[@id='layered_id_attribute_group_1']"
  element :chk_m, :xpath, "//*[@id='layered_id_attribute_group_2']"
  element :chk_l, :xpath, "//*[@id='layered_id_attribute_group_3']"
end
require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

class MenuWomen < SitePrism::Section
  element :lnk_tops, :xpath, "//*[text()='Tops']"
  element :lnk_tshirts, :xpath, "//[@id='block_top_menu']//*[text()='T-shirts']"
  element :lnk_blouses, :xpath, "//[@id='block_top_menu']//*[text()='Blouses']"
  element :lnk_dresses, :xpath, "//*[text()='Dresses']"
  element :lnk_casual_dresses, :xpath, "//[@id='block_top_menu']//*[text()='Casual Dresses']"
end
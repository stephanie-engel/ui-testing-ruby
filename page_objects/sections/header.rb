require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

class Header < SitePrism::Section
  element :banner_get_savings_now, :xpath, "//*[@id='banner']//*[@class='img-responsive']"
  element :lnk_contact_us, :xpath, "//*[@id='header']//*[@id='contact-link']"
  element :lnk_sign_in, :xpath, "//*[@id='header']//*[@class='login']"
  element :img_call_us_now, :xpath, "//*[@id='header']//*[@class='shop-phone']"
  element :your_logo, :xpath, "//*[@id='header_logo']//*[alt='My Store']"
  element :txt_search, :xpath, "//*[@id='searchbox']//*[@id='search_query_top']"
  element :btn_submit_search, :xpath, "//*[@id='searchbox']//*[@name='submit_search']"
  element :btn_cart, :xpath, "//*[@id='header']//*[@class='shopping_cart']" 
  element :lnk_women, :xpath, "//*[@id='block_top_menu']//*[text()='Women')]"
  element :lnk_dresses, :xpath, "//*[@id='block_top_menu']//*[text()='Dresses')]"
  element :lnk_tshirts, :xpath, "//*[@id='block_top_menu']//*[text()='T-shirts')]"
end

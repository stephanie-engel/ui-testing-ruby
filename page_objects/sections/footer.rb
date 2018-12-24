require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

class Footer < SitePrism::Section
  element :txt_enter_your_email, :xpath, "//*[@id='footer']//*[@id='newsletter-input']"
  element :btn_submit_email, :xpath, "//*[@id='footer']//*[@id='submitNewsletter']"
  element :lnk_facebook, :xpath, "//*[@id='social_block']//*[@class='facebook']"
  element :lnk_twitter, :xpath, "//*[@id='social_block']//*[@class='twitter']"
  element :lnk_youtube, :xpath, "//*[@id='social_block']//*[@class='youtube']"
  element :lnk_google_plus, :xpath, "//*[@id='social_block']//*[@class='google-plus']"
  element :lnk_women, :xpath, "//*[@id='footer']//*[text()='Women']"
  element :lnk_specials, :xpath, "//*[@id='block_various_links_footer']//*[@text()='Specials']"
  element :lnk_new_producsts, :xpath, "//*[@id='block_various_links_footer']//*[@text()='New products]"
  element :lnk_bestsellers, :xpath, "//*[@id='block_various_links_footer']//*[@text()='Best sellers']"
  element :lnk_our_stores, :xpath, "//*[@id='block_various_links_footer']//*[@text()='Our stores']"
  element :lnk_contact_us, :xpath, "//*[@id='block_various_links_footer']//*[@text()='Contact us']"
  element :lnk_terms_and_conditions_of_use, :xpath, "//*[@id='block_various_links_footer']//*[@text()='Terms and conditions of use']"
  element :lnk_about_us, :xpath, "//*[@id='block_various_links_footer']//*[@text()='About us']"
  element :lnk_sitemap, :xpath, "//*[@id='block_various_links_footer']//*[@text()='Sitemap']"
  element :lnk_my_account, :xpath, "//*[@class='footer-block col-xs-12 col-sm-4']//*[@text()='My account']"
  element :lnk_my_orders, :xpath, "//*[@class='footer-block col-xs-12 col-sm-4']//*[@text()='My orders']"
  element :lnk_my_credit_slips, :xpath, "//*[@class='footer-block col-xs-12 col-sm-4']//*[@text()='My credit slips']"
  element :lnk_my_addressess, :xpath, "//*[@class='footer-block col-xs-12 col-sm-4']//*[@text()='My addresses']"
  element :lnk_my_personal_info, :xpath, "//*[@class='footer-block col-xs-12 col-sm-4']//*[@text()='My personal info']"
end
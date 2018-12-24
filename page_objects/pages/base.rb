require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/menu_women'
require_relative '../sections/menu_dresses'

class Base < SitePrism::Page

  section :header, Header, "#page > div.header-container"
  section :footer, Footer, "#page > div.footer-container"
  section :menu_women, MenuWomen, "#block_top_menu > ul > li:nth-child(1) > a"
  section :menu_dresses, MenuDresses, "#block_top_menu > ul > li:nth-child(2) > a"

  # HEADER ELEMENTS
  def banner_get_savings_now
    header.banner_get_savings_now
  end

  def lnk_contact_us
    header.lnk_contact_us
  end

  def lnk_sign_in
    header.lnk_sign_in
  end

  def img_call_us_now
    header.img_call_us_now
  end

  def txt_search
    header.txt_search
  end

  def btn_submit_search
    header.btn_submit_search
  end

  def btn_cart
    header.btn_cart
  end

  def lnk_women
    header.lnk_women
  end

  def lnk_dresses
    header.lnk_dresses
  end

  def lnk_tshirts
    header.lnk_tshirts
  end

  # FOOTER ELEMENTS
  def txt_enter_your_email
    footer.txt_enter_your_email
  end

  def btn_submit_email
    footer.btn_submit_email
  end

  def lnk_facebook
    footer.lnk_facebook
  end

  def lnk_twitter
    footer.lnk_twitter
  end

  def lnk_youtube
    footer.lnk_youtube
  end

  def lnk_google_plus
    footer.lnk_google_plus
  end

  def lnk_women
    footer.lnk_women
  end

  def lnk_specials
    footer.lnk_specials
  end

  def lnk_new_producsts
    footer.lnk_new_producsts
  end

  def lnk_bestsellers
    footer.lnk_bestsellers
  end

  def lnk_our_stores
    footer.lnk_our_stores
  end

  def lnk_contact_us
    footer.lnk_contact_us
  end

  def lnk_terms_and_conditions_of_use
    footer.lnk_terms_and_conditions_of_use
  end

  def lnk_about_us
    footer.lnk_about_us
  end

  def lnk_sitemap
    footer.lnk_sitemap
  end

  def lnk_my_account
    footer.lnk_my_account
  end

  def lnk_my_orders
    footer.lnk_my_orders
  end

  def lnk_my_credit_slips
    footer.lnk_my_credit_slips
  end

  def lnk_my_addressess
    footer.lnk_my_addressess
  end

  def lnk_my_personal_info
    footer.lnk_my_personal_info
  end
end

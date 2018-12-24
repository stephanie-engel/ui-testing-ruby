require_relative 'base'

class Cart < Base
  set_url '{?query*}'
      element :tab_summary, :xpath, "//*[@id='order_step']//*[text()='Summary']"
      element :tab_sign_in, :xpath, "//*[@id='order_step']//*[text()='Sign in']"
      element :tab_address, :xpath, "//*[@id='order_step']//*[text()='Address']"
      element :tab_shipping, :xpath, "//*[@id='order_step']//*[text()='Shipping']"
      element :tab_payment, :xpath, "//*[@id='order_step']//*[text()='Payment']"
end

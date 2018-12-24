require_relative 'base'

class SignIn < Base
  set_url '{?query*}'
      element :txt_create_an_account_email_address, :xpath, "//*[@id='email_create']"
      element :btn_create_an_account, :xpath, "//*[@id='SubmitCreate']"
      element :txt_already_registered_email_address, :xpath, "//*[@id='email']"
      element :txt_password, :xpath, "//*[@id='passwd']"
      element :lnk_forgot_your_password, :xpath, "//*[@id='login_form']//a[@text='Forgot your password?']"
      element :btn_sign_in, :xpath, "//*[@id='SubmitLogin']"
end

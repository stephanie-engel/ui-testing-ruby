require_relative '../page_objects/pages/home'
require_relative '../page_objects/pages/search_results'
require_relative '../page_objects/pages/cart'
require_relative '../page_objects/pages/sign_in'

# Setup tests with the Selenium Grid, Capybara, Selenium Webdriver, and Browser
setup
###############################################################################
describe 'Home Page', type: :feature do
  before (:each) do
    @home_page = Home.new
    @home_page.load
    @home_page.wait_for_homepage_slider
  end

  it 'verifies page elements' do
    expect(@home_page).to have_btn_shop_now
    expect(@home_page).to have_img_25_off
    expect(@home_page).to have_img_45_off
    expect(@home_page).to have_lnk_popular
    expect(@home_page).to have_lnk_best_sellers
    expect(@home_page).to have_img_top_trends
    expect(@home_page).to have_img_mens_coats_and_jackets
    expect(@home_page).to have_img_womens_coats_and_jackets
    expect(@home_page).to have_img_sunglasses_and_eyewear
    expect(@home_page).to have_img_savy_trends_handbags
  end

  it 'searches for an item' do
    @home_page.wait_for_header
    @home_page.txt_search.set 'dress'
    @home_page.btn_submit_search.click
    sleep(1)
    search_results_page = SearchResults.new
    search_results_page.load(query: {'controller'=>'search', 'orderby'=>'position', 'orderway'=>'desc', 'search_query'=>'dress', 'submit_search'=>''})
    expect(search_results_page).to be_displayed
  end

  it 'accesses the cart page' do
    @home_page.wait_for_header
    @home_page.btn_cart.click
    cart_page = Cart.new
    cart_page.load(query: {'controller'=>'order'})
    expect(cart_page).to be_displayed
  end

  it 'accesses the sign in page' do
    @home_page.wait_for_header
    @home_page.lnk_sign_in.click
    sign_in_page = SignIn.new
    sign_in_page.load(query: {'controller'=>'authentication', 'back'=>''})
    expect(sign_in_page).to be_displayed
  end
end

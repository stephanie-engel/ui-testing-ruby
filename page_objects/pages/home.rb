require_relative 'base'

class Home < Base
  set_url "/"
    element :homepage_slider, :xpath, "//*[@id='homepage-slider']"
    element :btn_shop_now, :xpath, "//*[@id='homeslider']//*[@type='button']"
    element :img_25_off, :xpath, "//*[@id='htmlcontent_top']//img[contains(@src, 'banner-img6.jpg')]" 
    element :img_45_off, :xpath, "//*[@id='htmlcontent_top']//img[contains(@src, 'banner-img7.jpg')]" 
    element :lnk_popular, :xpath, "//*[@class='homefeatured']"
    element :lnk_best_sellers, :xpath, "//*[@class='blockbestsellers']"
    element :img_top_trends, :xpath, "//*[@class='item-link']//img[contains(@src, 'banner-img1.jpg')]" 
    element :img_mens_coats_and_jackets, :xpath, "//*[@class='item-link']//img[contains(@src, 'banner-img2.jpg')]" 
    element :img_womens_coats_and_jackets, :xpath, "//*[@class='item-link']//img[contains(@src, 'banner-img3.jpg')]"
    element :img_sunglasses_and_eyewear, :xpath, "//*[@class='item-link']//img[contains(@src, 'banner-img4.jpg')]"
    element :img_savy_trends_handbags, :xpath, "//*[@class='item-link']//img[contains(@src, 'banner-img5.jpg')]"
  end

require_relative 'base'

class SearchResults < Base
  set_url '{?query*}'
    element :header_search, :xpath, "//*[@id='center_column']//h1[contains(text(), 'Search')]" 
    element :menu_sort_by, :xpath, "//*[@id='selectProductSort']"
end

require_relative 'base'
require_relative '../sections/category'
require_relative '../sections/size'

class BaseCatalog < Base
   section :categories, CategoryDress, "#layered_form > div > div:nth-child(1) > div > span"
   section :size, Size, "#layered_form > div > div:nth-child(2) > div > span"

   # CATEGORY
   def chk_casual_dresses
      category_dress.chk_casual_dresses
   end

   def chk_evening_dresses
      category_dress.chk_evening_dresses
   end

   def chk_summer_dresses
      category_dress.chk_summer_dresses
   end

   # SIZE
   def chk_s
      size.chk_s
   end

   def chk_m
      size.chk_m
   end

   def chk_l
      size.chk_l
   end
end

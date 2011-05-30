class ProductController < ApplicationController
   
   def show
      @product = Product.find_by_id(23)
   end
   
   def display
      @product = Product.find_by_id(23)
   end
   
end

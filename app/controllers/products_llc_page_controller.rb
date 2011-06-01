class ProductsLlcPageController < ApplicationController
   
   def display
      @category_name = Category.find_by_id(params[:id]).name # get '9' from the URL
      @products = Product.where(:category_l3 => @category_name).paginate :page => params[:page], :order => 'id', :per_page => 6
   end
   
   # 3 accessories
   # 4 combiantion
   # ?? diathermy — not in categories_modalities.xls: mistake; fix it. 
   # 5 electrodes
   # 6 iontophoresis
   # 7 lotions
   # 8 stim
   # 9  ultrasound

   def ultrasound
       @products = Product.where(:category_l3 == "Ultrasound" ).paginate :page => params[:page], :order => 'id', :per_page => 6
   end
   
end

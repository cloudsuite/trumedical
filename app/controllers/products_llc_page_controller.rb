class ProductsLlcPageController < ApplicationController
   
   def show
      # @products = Product.all.paginate :page => params[:page], :order => 'id', :per_page => 6
      @products = Product.where(:category_l3 == "Ultrasound" ).paginate :page => params[:page], :order => 'id', :per_page => 6
   end
   def accessories
   end
   def combination
   end
   def diathermy
   end
   def electrodes
   end
   def iontophoresis
   end
   def lotions
   end
   def stim
   end
   def ultrasound
       @products = Product.where(:category_l3 == "Ultrasound" ).paginate :page => params[:page], :order => 'id', :per_page => 6
   end
   
end

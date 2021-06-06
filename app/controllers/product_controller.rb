class ProductController < ApplicationController
    def productor
        products = Product.all
        msg = {:token => "Hello", :status => "OK", :data => products}
        render :json => msg
    end

    def productorById
        @product = Product.find_by(id: params[:id])
        render :json => {:token => "Hellos", :data => @product}
    end

    def productorByCategory
        @product = Product.where(category: params[:category])
        render :json => {:token => "Hellos", :data=> @product}
    end

    


    # def 
    # def productByID:
    # end
end

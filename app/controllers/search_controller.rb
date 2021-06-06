class SearchController < ApplicationController
    def getData
        products = Product.all
        resp = []
        products.each do |key, value|
            resp.push(
                :json => {
                    :id => key,
                    :tags => value.tags,
                    :product => value.name
                }
            )    
        
        render :json => {:token => params[:token], :data => resp}
    end 
end

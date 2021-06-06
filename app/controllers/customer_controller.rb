class CustomerController < ApplicationController
    def Detail
        @customer = Customer.find_by(token: params[:token])
        render :json => {:token => params[:token], :data => @customer}
    end

    def Update
        customer = Customer.find_by(token: params[:token])
        if params[:contact]
            if params[:contact] != customer.contact
                customer.update(contact: params[:contact])
            end
        end

        if params[:location]
            if params[:location] != customer.location
                customer.update(location: params[:location])
            end
        end
        
        if params[:city]
            if params[:city] != customer.city
                customer.update(city: params[:city])
            end
        end

        if params[:lat]
            if params[:lat] != customer.lat
                customer.update(lat: params[:lat])
            end
        end

        if params[:long]
            if params[:long] != customer.long
                customer.update(long: params[:long])
            end 
        end
        
        if params[:points]
            if params[:points] != customer.points
                customer.update(points: params[:points])
            end
        end 
        
        # customer.save
            
        render :json => {:token => customer.token, :data => customer}

    end

    def Destroy
        @customer = Customer.find_by(token: params[:token])
        @customer.destroy
        render :json => {:token => params[:token], :data => {msg:"Deleted Successfully"}, :status => 200}
    end

end

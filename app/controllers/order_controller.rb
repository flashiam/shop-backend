class OrderController < ApplicationController
    def createOrder
        create = params[:data]
        payOrder = Razorpay::Order.create amount: create[:net].round*100, currency: "INR", receipt: "TEST"
        ids = Order.all.count() + 1
        order = Order.create(
            id: ids,
            gross: create[:gross],
            net: create[:net],
            taxes: create[:taxes],
            discount: create[:discount],
            promo: create[:promo],
            orderDate: Date.today.strftime("%d-%m-%Y"),
            orderTime: DateTime.now.strftime("%H:%M:%S"),
            payOrderId: payOrder.id,
            # payPaymentId: create[:paymentId],
            # paymentStatus: create[:payStatus],
            dileveryStatus: "Order Accepted",
            customer: Customer.find_by(token: params[:token]),
            orderItems: create[:items]
            
        )
        render :json => {:token => params[:token], :data => {:payOrderId => payOrder.id, :orderId => order} }
    end

    def checkOrder
        order = Order.find_by(payOrderId: params[:orderid])
        token = order.customer.token
        
        if token == params[:token]
            net = order.net
            order.net = net.to_f
            order.save
            # order.lock!
            customer = Customer.find_by(token: params[:token])
            render :json => {:token => params[:token], :data => order, :customer => customer }
        else
            render :json => {:token => params[:token], :data => "Invalid Request"}
        end
    end

    def getOrderPay
        order = Order.find_by(payPaymentId: params[:payid])

        if order.paymentStatus == true
            render :json => { :data => 'Payment Successful' }
        else
            render :json => { :data => 'Payment Pending' }
        end
    end

    def getOrder
        order = Order.find(params[:id])
        render :json => {:token => params[:token], :data => order}
    end

    def updateOrder
        update = params[:order]
        order = Order.find(update[:id])
        
        
        if order.dileveryStatus == true
            if order.paymentStatus == false
                order.paymentId = "COD"
                order.paymentStatus = true 
                order.save   
                order.lock!
                render :json => {:token => update.customer.token, :data => "Order delivered"} 
            # end

            else
                render :json => {:token => update.customer.token, :data => "Order Completed, don't bullshit us"}
            end
        # end
    
        else
            order.paymentId = update.payPaymentId
            order.paymentStatus = update.payStatus
                
            order.dileveryStatus = update.dileveryStatus
            order.dileveryTime = update.dileveryTime
            
            order.save
        end

    end

    
end

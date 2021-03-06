Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/products' => 'product#productor'
  post '/productsbyId' => 'product#productorById'
  post '/productsbyCategory' => 'product#productorByCategory'
  post '/customerDetail' => 'customer#Detail'
  post '/customerUpdate' => 'customer#Update'
  post '/customerDelete' => 'customer#Destroy'
  post '/orderCreate' => 'order#createOrder'
  post '/orderData' => 'order#getOrder'
  post '/checkOrder' => 'order#checkOrder'
  post '/updateOrder' => 'order#updateOrder'
  post '/orderStatus' => 'order#getOrderPay'
  post '/showSearch' => 'search#getData'
end

require 'date'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Product.create(name: 'Chicken Boneless', description: "This is the best chicken ever", image:"image.png", priceperkg: 200.0, subcategory: '500g, 1kg, 1.5kg, 2kg', productRating: 4.2, category: 'Chicken', tags: 'chicken, boneless, chicken breasts, chicken whole, ready to cook')
# Product.create(name: 'Chicken Breasts', description: "This is the best chicken ever", image:"image.png", priceperkg: 250.0, subcategory: '500g, 1kg, 1.5kg, 2kg', productRating: 4.4, category: 'Chicken', tags: 'chicken, boneless, chicken breasts, chicken whole, ready to cook')
# Product.create(name: 'Chicken Legs', description: "This is the best chicken ever", image:"image.png", priceperkg: 210.0, subcategory: '500g, 1kg, 1.5kg, 2kg', productRating: 4.7, category: 'Chicken', tags: 'chicken, boneless, chicken breasts, chicken whole, ready to cook')

# Product.create(name: 'Fish Pasanda', description: "This is the best fish ever", image:"image.png", priceperkg: 400.0, subcategory: '500g, 1kg, 1.5kg, 2kg', productRating: 3.7, category: 'Fish', tags: 'chicken, boneless, chicken breasts, chicken whole, ready to cook')
Customer.create(name:"Abhinav Dubey", token:82887, contact: "9893221232", email:"shiva@specsoid.in", city:"Bhopal", profile:"http://localhost:3000/images/hello.png", points:100, location:"53, Anmol Homes", lat:22.31231241, long:77.3123111)
Order.create(gross:150.50, net:190.50, taxes:40.0, discount: 10.0, promo:"WELCOME NEW", orderDate: Date.today.strftime("%d-%m-%Y"), orderTime: DateTime.now.strftime("%H:%M:%S"), payOrderId:"rzp_92911231", payPaymentId:"pay_rzp_2818812", paymentStatus:"Pending", dileveryStatus:"Accepted", customer: Customer.find_by(id:1), orderItems: "1,3,2")
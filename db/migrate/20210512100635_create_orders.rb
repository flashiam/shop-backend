class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.decimal :gross
      t.decimal :net
      t.decimal :taxes
      t.decimal :discount
      t.string :promo
      t.date :orderDate
      t.datetime :orderTime
      t.string :payOrderId
      t.string :payPaymentId
      t.boolean :paymentStatus
      t.binary :dileveryStatus
      t.datetime :dileveryTime
      t.belongs_to :customer
      t.string :orderItems

      t.timestamps
    end
  end
end

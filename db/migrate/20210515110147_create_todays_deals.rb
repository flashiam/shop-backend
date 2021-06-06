class CreateTodaysDeals < ActiveRecord::Migration[6.1]
  def change
    create_table :todays_deals do |t|
      t.decimal :price
      t.integer :quantity
      t.integer :discountRate
      t.belongs_to :product
      t.boolean :display

      t.timestamps
    end
  end
end

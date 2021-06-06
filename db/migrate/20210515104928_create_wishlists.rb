class CreateWishlists < ActiveRecord::Migration[6.1]
  def change
    create_table :wishlists do |t|
      t.integer :proids
      t.datetime :updatedon
      t.belongs_to :customer
      t.timestamps
    end
  end
end

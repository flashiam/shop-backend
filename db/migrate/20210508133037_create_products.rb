class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      # t.primary_key :proid
      t.string :name
      t.text :description
      t.string :image
      t.decimal :priceperkg
      t.string :subcategory
      t.decimal :productRating
      t.string :category
      t.string :tags
      t.timestamp :updated

      t.timestamps
    end
  end
end

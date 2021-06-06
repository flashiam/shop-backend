class CreatePromos < ActiveRecord::Migration[6.1]
  def change
    create_table :promos do |t|
      t.string :img
      t.string :code
      t.decimal :value
      t.boolean :percent
      t.date :validTill

      t.timestamps
    end
  end
end

class CreateCarousals < ActiveRecord::Migration[6.1]
  def change
    create_table :carousals do |t|
      t.string :img
      t.string :altText
      t.boolean :display
      

      t.timestamps
    end
  end
end

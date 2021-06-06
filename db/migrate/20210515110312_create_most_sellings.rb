class CreateMostSellings < ActiveRecord::Migration[6.1]
  def change
    create_table :most_sellings do |t|
      t.belongs_to :product
      t.boolean :visible
      t.timestamps
    end
  end
end

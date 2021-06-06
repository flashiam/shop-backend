class CreateWhies < ActiveRecord::Migration[6.1]
  def change
    create_table :whies do |t|
      t.text :quest
      t.text :answer
      t.belongs_to :customer
      t.timestamp :updatedOn

      t.timestamps
    end
  end
end

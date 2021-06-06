class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.text :content
      t.date :postedOn
      t.belongs_to :customer
      t.timestamps
    end
  end
end

class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :token
      t.string :email
      t.string :city
      t.string :profile
      t.integer :points
      t.string :location
      t.float :lat
      t.float :long
      t.timestamp :last_updated

      t.timestamps
    end
  end
end

class AddContactToCustomer < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :contact, :string
  end
end

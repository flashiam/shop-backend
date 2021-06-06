class MigratioChangeOrderItemDatatype < ActiveRecord::Migration[6.1]
  def change
    def change
      def up
        remove_column :products, :orderItems
      end
     
      def down
        add_column :products, :orderItems[], :text
      end
    end
  end
end

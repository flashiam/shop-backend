class ChangeProidsDatatype < ActiveRecord::Migration[6.1]
  def change
    def change
      def up
        remove_column :wishlist, :proids
      end
     
      def down
        add_column :products, :proids[], :integer
      end
    end
  end
end

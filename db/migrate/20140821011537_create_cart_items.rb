class CreateCartItems < ActiveRecord::Migration
#  def change
#    create_table :cart_items do |t|
#	t.integer :cart_id
#	t.integer :book_id
	
#	t.timestamps
#    end
#  end

  def down
 	CartItem.delete_all
  end
end

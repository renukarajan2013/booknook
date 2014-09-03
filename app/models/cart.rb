class Cart < ActiveRecord::Base
	has_many :cart_items, :dependent =>:destroy

	def total_price
		total = 0
		cart_items.each  do |cart_item|
			book = Book.where(id: cart_item.book_id).first
			total = total + book.price 
		end
		total
	end
end

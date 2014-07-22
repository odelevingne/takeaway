require_relative './text_message_confirmation.rb'

class Takeaway

	include TextMessageConfirmation

	attr_reader :menu

	def add(menu)
		@menu = menu
	end

	def place_order(order, customer)
		@order = order
		@customer = customer
	end

	def outstanding_orders
		@order
	end

end
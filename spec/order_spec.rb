require 'order'

describe 'Order' do

	let (:order) { Order.new }
	
	it 'is created with no dishes' do
		expect(order.dishes).to eq []
	end

end
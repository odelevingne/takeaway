require 'order'

describe 'Order' do

	let (:order) { Order.new }
	let (:bacon_burger) { double :dish, name: 'bacon_burger', price: '8'}
	
	it 'is created with no dishes' do
		expect(order.dishes).to eq []
	end

	it 'can have a dish added to it' do
		expect(order.dishes).to eq []
		order.add('bacon_burger')
		expect(order.dishes).to eq ['bacon_burger']
	end



end
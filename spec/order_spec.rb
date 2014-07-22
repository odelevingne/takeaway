require 'order'

describe 'Order' do

	let (:order) { Order.new }
	let (:bacon_burger) 	{ double :dish, name: 'Bacon Burger', price: 8	 }
	let (:chicken_burger) { double :dish, name: 'Chicken Burger', price: 9 }

	it 'is created with no dishes' do
		expect(order.dishes).to eq []
	end

	it 'can have a dish added to it' do
		expect(order.dishes).to eq []
		order.add('bacon_burger')
		expect(order.dishes).to eq ['bacon_burger']
	end

	it 'can have more than one of each dish added at a time' do
		order.add('bacon_burger', 3)
		expect(order.dishes).to eq ['bacon_burger', 'bacon_burger', 'bacon_burger']
	end

	it 'can have a dish removed from the order' do
		order.add('bacon_burger', 2)
		expect(order.dishes).to eq ['bacon_burger', 'bacon_burger']
		order.remove('bacon_burger')
		expect(order.dishes).to eq []
	end

	it 'can show the final order value' do
		order.add(bacon_burger, 2)
		order.add(chicken_burger, 3)
		expect(order.total_cost).to eq 43
	end

	

end
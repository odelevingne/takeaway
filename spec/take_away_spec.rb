require 'takeaway'

describe 'Takeaway' do
	let (:bacon_burger) 			{ double :dish, name: 'Bacon Burger', price: 8}
	let (:veggie_burger)			{ double :dish, name: 'Bacon Burger', price: 8}
	let (:chicken_burger)			{ double :dish, name: 'Bacon Burger', price: 8}
	let (:best_burgers_menu) 	{ double :menu, dishes: [bacon_burger, chicken_burger, veggie_burger]}
	let (:best_burgers)       { Takeaway.new }
	let (:new_order)					{ double :order, dishes: [chicken_burger, bacon_burger]}
	let (:ollie)							{ double :customer, name: 'Oliver' , number: '+447824430733' }
	it 'is created with no menu' do
		expect(best_burgers.menu).to eq nil
	end

	it 'can have a menu added to it' do
		best_burgers.add(best_burgers_menu)
		expect(best_burgers.menu).to eq best_burgers_menu
	end

	it 'can have receive an order' do
		best_burgers.place_order(new_order, ollie)
		expect(best_burgers.outstanding_orders).to eq new_order
	end

	it 'can place an order and send a text message' do

	end

end

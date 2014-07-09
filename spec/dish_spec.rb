require 'dish'

describe 'Dish' do

	let(:dish) { Dish.new('Bacon Burger', '8') }
	
	it 'is created with a name' do
		expect(dish.name).to eq 'Bacon Burger'
	end

	it 'is created with a price' do
		expect(dish.price).to eq '8'
	end


end
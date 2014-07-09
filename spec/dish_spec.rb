require 'dish'

describe 'Dish' do

	let(:dish) { Dish.new('Bacon Burger') }
	
	it 'should be created with a name' do
		expect(dish.name).to eq 'Bacon Burger'
	end


end
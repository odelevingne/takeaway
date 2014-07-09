require 'menu'

describe 'Menu' do

	let (:bacon_burger) 		{ double :dish, name: 'bacon_burger', price: '8' 	}
	let (:chicken_burger) 	{ double :dish, name: 'chicken_burger', price: '9'}
	let (:veggie_burger) 		{ double :dish, name: 'veggie_burger', price:'8'	}
	let (:menu_with_dishes) { Menu.new(['bacon_burger', 'chicken_burger']) 			}


	it 'has no dishes when created' do
		menu = Menu.new
		expect(menu.dishes).to eq []
	end

	it 'can be created with dishes' do
		expect(menu_with_dishes.dishes).to eq ['bacon_burger', 'chicken_burger']
	end

	it 'can have a dish added to the menu' do
		menu_with_dishes.add('veggie_burger')
		expect(menu_with_dishes.dishes).to eq ['bacon_burger', 'chicken_burger', 'veggie_burger']
	end

end
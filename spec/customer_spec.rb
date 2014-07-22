require 'customer'

describe 'Customer' do 

	let (:customer) { Customer.new('Oliver', '+447824430733') }

	context 'Creating the customer:' do

		it 'is created with a name' do
			expect(customer.name).to eq 'Oliver'
		end

		it 'is created with a phone number' do
			expect(customer.number).to eq '+447824430733'
		end

	end

end
class Order

attr_reader :dishes

	def initialize(dishes = [])
		@dishes = dishes
	end

end
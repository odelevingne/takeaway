class Order

attr_reader :dishes

	def initialize(dishes = [])
		@dishes = dishes
	end

	def add(dish, quantity=1)
		dishes_to_add = quantity.times.map { dish }
		@dishes.concat(dishes_to_add)
	end

	def remove(dish)
		@dishes.delete(dish)
	end

end

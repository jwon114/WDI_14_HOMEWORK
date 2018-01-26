module StudentHelper
	def sorting_hat
		return House.order("RANDOM()").first.id
	end
end
module StudentHelper
	def sorting_hat
		houses = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
		return House.find_by(name: houses.sample).id
	end
end
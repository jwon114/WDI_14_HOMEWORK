# Arrays
# Starting with the following array...

planeteers = ["Earth", "Wind", "Captain Planet", "Fire", "Water"]
# Access the second value in planeteers.

wind = ["Wind"]

# # Your answer here
# Add "Heart" to the end of planeteers.

planeteers.push("Heart")

# # Your answer here
# Remove "Captain Planet" from the array (without using a method).

planeteers -= ["Captain Planet"]

puts planeteers
puts

# # Your answer here
# Combine planeteers with rangers = ["Red", "Blue", "Pink", "Yellow", "Black"] and save the result in a variable called heroes.
rangers = ["Red", "Blue", "Pink", "Yellow", "Black"]
heroes = planeteers.concat rangers

puts heroes
puts

# # Your answer here
# Alphabetize the contents of heroes using a method. The Ruby documentation might help.

heroes = heroes.sort

puts heroes
puts

# # Your answer here
# Randomize the contents of heroes using a method. The Ruby documentation might help.

puts heroes.shuffle
puts


# # Your answer here
# Bonus
# Select a random element from heroes using a method. The Ruby documentation might help.

puts heroes.sample
puts

# # Your answer here
# Select all elements in heroes that begin with "B" using a method. The Ruby documentation might help.

heroes_starting_with_b = []

heroes.each do | hero |
	if (hero.upcase.start_with? "B")
		heroes_starting_with_b.push(hero)
	end
end

puts heroes_starting_with_b
puts

# # Your answer here
# Hashes
# Initialize a hash called ninja_turtle with the properties name, weapon and radical. They should have values of "Michelangelo", "Nunchuks" and true respectively.

ninja_turtle = {
	:name => "Michelangelo",
	:weapon => "Nunchuks",
	:radical => true
}

# # Your answer here
# Add a key age to ninja_turtle. Set it to whatever numerical value you'd like.

ninja_turtle[:age] = 20

puts ninja_turtle
puts

# # Your answer here
# Remove the radical key-value pair from ninja_turtle.

ninja_turtle.delete(:radical)

puts ninja_turtle
puts

# # Your answer here
# Add a key pizza_toppings to ninja_turtle. Set it to an array of strings (e.g., ["cheese", "pepperoni", "peppers"]).

ninja_turtle[:pizza_toppings] = ["cheese", "pepperoni", "peppers"]

puts ninja_turtle
puts

# # Your answer here
# Access the first element of pizza_toppings.

puts ninja_turtle[:pizza_toppings][0]
puts

# # Your answer here
# Produce an array containing all of ninja_turtle's keys using a method. The Ruby documentation might help.

ninja_turtle_keys = []
ninja_turtle.each_key do | key |
	ninja_turtle_keys.push(key)
end

puts ninja_turtle_keys
puts

# # Your answer here
# Bonus
# Print out each key-value pair in the following format - "KEY's is equal to VALUE" -- using a method. The Ruby documentation might help.

# # Your answer here

ninja_turtle.each do | key, value |
	puts "#{key} is equal to #{value}"
end

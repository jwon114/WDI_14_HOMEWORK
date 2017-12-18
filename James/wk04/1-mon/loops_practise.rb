# Title: Guess The Number
# Activity:
# You are to generate a basic "guess my number" game. The computer will pick a random number between 0 and 10. The user will guess the number until they guess correctly.
# Specification:
# The user should be asked to guess a number
# If the user's guess is correct, the user should see a congratulatory message
# If the user's guess is not correct, the user should be asked to guess the number again.
# Extensions:
# Let the user choose the maximum value (so they can play a long game with a random value between 0 and 10000, for example).
# Give feedback to the user: "Wrong, guess higher!" or "Wrong, guess lower!"

notWon = true

puts "Choose a maximum value"
max_value = gets

computer_pick = rand(max_value.to_i) + 1

while notWon do

	puts "Pick a number between 0 and #{max_value}"
	user_input = gets
	user_input = user_input.to_i

	if user_input == computer_pick
		puts "Congrats, you guessed correctly"
		notWon = false
	elsif user_input > computer_pick
		puts "Wrong, guess lower"
	else
		puts "Wrong, guess higher"
	end
end
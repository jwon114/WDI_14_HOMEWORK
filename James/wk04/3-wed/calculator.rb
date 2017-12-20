# Calculator
# Explanation
# You will be building a CLI calculator. Which means it will be a command line text based program. A calculator can perform multiple arithmetic operations. Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.
# Specification:
# A user should be given a menu of operations
# A user should be able to choose from the menu
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
# This process should continue until the user selects a quit option from the menu
# Phase 1
# Calculator functionality
# Calculator should be able to do basic arithmetic (+,-, *, /)
# Phase 2
# Advanced Calculator functionality
# Calculator should be able to do basic arithmetic (exponents, square roots)
# Phase 3
# User should be given a menu of Calculator functionality
# User should be able to choose intended functionality
# Optional Extensions
# Does your calculator allows addition of more then 2 numbers in one go? eg: 2 + 3 + 4

require "pry"

def crappy_calculator
	operators = ["+", "-", "*", "/", "exp", "sqrt"]

	calculating = true
	while calculating do
		puts "Enter arguments in the format {arg1} {operator} {arg2} to calculate"
		input = gets.chomp

		if input.downcase == "exit"
			calculating = false
			puts "Bye bye"
			next
		end

		input_array = input.gsub(/\s+/, "").split(/(\d+)/)
		input_array.shift
		# binding.pry
		valid_input = true
		until input_array.length == 1 do
			arg1 = input_array[0]
			operator = input_array[1]
			arg2 = input_array[2]

			if !/\d+/.match(arg1) || !/\d+/.match(arg2) || !operators.include?(operator)
				valid_input = false
				break
			end
			

			case operator
			when "+"
				result = arg1.to_i + arg2.to_i
			when "-"
				result = arg1.to_i - arg2.to_i
			when "*"
				result = arg1.to_i * arg2.to_i
			when "/"
				result = arg1.to_i / arg2.to_i
			when "exp"
				result = arg1.to_i ** arg2.to_i
			when "sqrt"
				result = Math.sqrt(arg1.to_i)
			else
				result = 0
			end
			input_array.shift(3)
			input_array.unshift(result.to_s)
		end
			# binding.pry

		if valid_input
			puts result
		else
			puts "Invalid input"
		end
	end
end

crappy_calculator









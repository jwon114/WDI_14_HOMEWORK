# line of code
# write a program loc.rb to count and puts the number of lines of code in a file

# eg. say you have a file data.txt with the following contents

# cat
# dog
# rabbit
# when I run the program, it should prompt for a filename

# > ruby loc.rb
# > Enter filename: data.txt
# > 3 line(s)
# hint
# lookup gets method and the readlines method

require	"fileutils"
require	"pathname"

print "Enter filename: "
filename = gets.chomp

if FileTest.exists?(filename)
	code_file_array = File.readlines(filename)
	total_lines = code_file_array.length

	puts "#{total_lines} line(s)"
else
	puts "File doesn't exist in current directory"
end
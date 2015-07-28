=begin
 	THIS PROGRAM CONVERTS BINARY NUMBERS TO DECIMAL VALUES
 	IN RUBY

 	We use a function that is almost equivalent to LEFT or RIGHT 
 	FUNCTION in vb where we can get substring from a string, in this 
 	case the substring is a character that we have to convert to a 
 	digit. We do this because we have to multiply each individual digit
 	by the Base(2)^exponent.

 	We also use the length function to limit our iteration 

 	The power(exponent operator) in ruby is **

=end 

#PROGRAM STARTS HERE

puts("Key in a binary number that you wish to be converted :")
binarystring = gets.chomp #chomp get rid off the "\n" that would otherwise appear

i = 0
finalans = 0

while (i < binarystring.length)

	finalans = (binarystring[(-1-i),1].to_i * (2**i)) + finalans
	i = i + 1
	
end

puts("The decimal value of the given binary number is #{ finalans }")






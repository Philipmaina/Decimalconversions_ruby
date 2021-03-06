=begin
 	THIS METHOD CONVERTS BINARY,OCTAL AND HEXADECIMAL NUMBERS TO DECIMAL VALUES
 	IN RUBY

 	We use a function that is almost equivalent to LEFT or RIGHT 
 	FUNCTION in vb where we can get substring from a string, in this 
 	case the substring is a character that we have to convert to a 
 	digit. We do this because we have to multiply each individual digit
 	by the Base(2,8,16)^exponent.

 	We also use the length function to limit our iteration 

 	The power(exponent operator) in ruby is **

 	entryvaluestring which is what the user inputs is a global variable

=end 

#METHOD(FUNCTION) STARTS HERE

def Othersystems_to_decimal(base)

	i = 0
    finalans = 0

	while (i < $entryvaluestring.length)

		substrentryvalue = $entryvaluestring[(-1-i),1]

		if substrentryvalue == "A"
			substrentryvalue = "10"
		elsif substrentryvalue == "B"
			substrentryvalue = "11"
		elsif substrentryvalue == "C"
			substrentryvalue = "12"
		elsif substrentryvalue == "D"
			substrentryvalue = "13"
		elsif substrentryvalue == "E"
			substrentryvalue = "14"
		elsif substrentryvalue == "F"
			substrentryvalue = "15"
		end

		finalans = (substrentryvalue.to_i * (base**i)) + finalans

		i = i + 1
			
			
	end

	return finalans

end

#THE ACTUAL PROGRAM STARTS HERE
system"clear"

puts("What operation/conversion would you like to perform ?")
puts("1. Binary to Decimal conversion")
puts("2. Octal to Decimal conversion")
puts("3. Hexadecimal to Decimal conversion")

choice = gets.chomp.to_i

puts("What number would you like the conversion to be applied on ?")
$entryvaluestring = gets.chomp

case (choice)
  when 1 then puts("The decimal equivalent of the binary value keyed in is #{ Othersystems_to_decimal(2) }")
  when 2 then puts("The decimal equivalent of the octal number keyed in is #{ Othersystems_to_decimal(8) }")
  when 3 then puts("The decimal equivalent of the hexadecimal number keyed in is #{ Othersystems_to_decimal(16) }")	
end








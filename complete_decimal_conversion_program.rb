=begin 
THIS FUNCTION(METHOD) CONVERTS ANY DECIMAL NUMBER TO EITHER BINARY, OCTAL OR
HEXADECIMAL VALUES.

The principle of the EVILS OF DUPLICATION has employed in this method since we could 
have written a module for every single conversion i.e 3 modules which would be dectobin
dectooct and dectohex.ifThis saves on multiple lines of code.
=end



def Numeral_Conversion(conversion_type)

    result = " "

	while $entry_no > 0
		remainder = $entry_no % conversion_type
		$entry_no = $entry_no / conversion_type 
=begin
	Cannot reduce number of variables in this program because we need to store 
	this time since we need to compare with values 10 through 15, plus we couldnt 
	use this code 
    	result =   = "#{ entry_no % conversion_type(in this case 16) }#{ result }" 
	because we would store remainder like 10 or 11 without converting them to A , B 
=end 

=begin
The next section takes care of the extra symbols included in hexadecmal number system 
because hexadecimal values run from 0-15 but they use letters A through
F to represent values 10-15    	
=end
 
    		if  remainder == 10 
    			remainder = "A" 
    		elsif remainder == 11
    			remainder = "B" 
    		elsif remainder == 12
    			remainder = "C"
    		elsif remainder == 13
    			remainder = "D"
    		elsif remainder == 14
    			remainder = "E" 
    			elsif remainder == 15
    			remainder = "F"
    		end #This end closes the last elsif
    	
    	result = "#{ remainder }#{ result }" #used spaces before and after {} as said in styleguide
	end #This end closes the while loop


return result
end  #THIS IS THE END OF THE FUNCTION(METHOD)

#ACTUAL PROGRAM STARTS HERE 

system"clear"

puts("What operation/conversion would you like to perform ?")
puts("1. Decimal to binary conversion")
puts("2. Decimal to octal conversion")
puts("3. Decimal to hexadecimal conversion")
choice = gets.chomp.to_i

puts("What number would you like the conversion to be applied on ?")
$entry_no = gets.chomp.to_i


case(choice)
    when 1 then puts("The binary equivalent of the decimal number inputed is #{Numeral_Conversion(2)}")
    when 2 then puts("The octal equivalent of the decimal number inputed is #{Numeral_Conversion(8)}")
    when 3 then puts("The hexadecimal equivalent of the decimal number inputed is #{Numeral_Conversion(16)}")
end









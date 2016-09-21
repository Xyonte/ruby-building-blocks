
lowerLetters = ('a'..'z').to_a
upperLetters = ('A'..'Z').to_a


def caesar_cipher (string, offset)

	lowerLetters = ('a'..'z').to_a
	upperLetters = ('A'..'Z').to_a

	stringArray = string.split("")
	stringArray.each_index do |curIndex|
		#cycle and check each element for a alphabetic character
		curChar = stringArray[curIndex]
		if lowerLetters.include?(curChar) 
			#for lowercase, determine the position of the letter in the array, then replace with offset character
			position_new = lowerLetters.index(curChar) + offset
			while position_new >= 26
				position_new -= 26
			end
			stringArray[curIndex] = lowerLetters[position_new]

		elsif upperLetters.include?(curChar)
			position_new = upperLetters.index(curChar) + offset
			while position_new >= 26
				position_new -= 26
			end
			stringArray[curIndex] = upperLetters[position_new]
		end
	end
	stringArray.join
end

print "Text to be encoded: "
text = gets.chomp

print "Offset: "
offsetGet = gets.chomp.to_i

encoded = caesar_cipher(text, offsetGet)
puts "Encoded: " + encoded
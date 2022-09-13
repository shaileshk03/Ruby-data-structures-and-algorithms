# @Author Shailesh
# Ruby program dojo challenge 7 string cipher and print given and result string each one by one

# Ruby ord method : ord()
# Returns the codepoint of the first character of the string, assuming a single-byte character encoding:
# "a".ord # => 97
# "A".ord # => 224, in ISO-8859-1

# Split word into the individual characters. Then converting the characters to integers with ord with left shift of 1
# @param Char, Initial value (Fixed), value to shift
def char_shift(ch, initial_val, num_to_shift)
    # THe initial value is a fixed value + add an number to shift relative to 'a', modulo 26, 
    # so that the result maps to a different place to shift number from 'a' 
    # which will result in a new character with chr method ('chr' which is a ruby method)
    (((ch.ord - initial_val + 1) + num_to_shift) % 26 + initial_val).chr
end

# @Param String, num_to_shift
def string_cipher(str, num_to_shift)
    str.chars.map do |char|
        #case as char (character) types alphabet small & capital else return the char as it's 
        case char 
        when 'a'..'z'
            # calling above method to shift the char to given number and return as char
            char_shift(char, 'a'.ord, num_to_shift) 
        when 'A'..'Z'
            char_shift(char, 'A'.ord, num_to_shift)
        else
           char
        end
       # join is used to combine those char elements
    end.join  
end

# Input string
str = "There"
# Input number to shift
num_to_shift = 2 
# storing the result in str_cipher var of newly returned string 
str_cipher = string_cipher(str, num_to_shift)
puts "Original alphabet : #{str}"
puts "Alphabet rotated +#{num_to_shift} : #{str_cipher}"  

# For loop will iterate on all the object and print it 
for i in 0..str.length-1 do 
    puts "#{str[i]} => #{str_cipher[i]}"
end 


   
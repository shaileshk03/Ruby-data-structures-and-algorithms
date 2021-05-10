class Operators

# This Operators class has covered with all the operators used in ruby

# * Addition *
puts ("Addition:")
puts (10 + 20)
  

# * Subtraction *
puts ("Subtraction:")
puts (30 - 10)
  

# * Division *
puts ("Division:")
puts (100 / 20)
  

# * Multiplication *
puts ("Multiplication:")
puts (10 * 20)
  

# * Modulus *
# The modulo operator is % gives you the remaining of a division
# This can be used for things like checking if a number is even or odd
puts ("Modulus:")
puts (20 % 9)


# * Exponent *
puts ("Exponent:")
puts (2 ** 4)


# Equal To(==) operator checks whether the two given operands are equal or not
puts "Equal To Operator:"
puts (10 == 20)
 
# Not Equal To(!=) operator checks whether the two given operands are equal or not. If not, it returns true.
puts "Not Equal To Operator:"
puts (40 != 20)

# Greater Than(>) operator checks whether the first operand is greater than the second operand.
puts "Greater than Operator"
puts (100 > 20)

# Less than(<) operator checks whether the first operand is lesser than the second operand.
puts "Less than Operator"
puts (10  < 20)
 
# Less than(<) operator checks whether the first operand is lesser than the second operand.
puts "Less than Equal To Operator"
puts (2  <=  5)

# Greater Than Equal To(>=) operator checks whether the first operand is greater than or equal to the second operand
puts "Greater than Equal To Operator"
puts (2  >=  5)

# Combined combination (<=>) operator return 0 when first operand equal to second, 
# return 1 when first operand is greater than second operand, 
# return -1 when first operator is less than second operand.
puts "Combined combination operator"
puts(20 <=> 20)
puts(10 <=> 20)
puts(20 <=> 10)


# using || operator
puts "Logical OR operator"
if a == 10 || b == 20
    puts result = a + b + c
end
  
# using ! operator
puts "Logical Not Operator"
puts !(true)


# * Range opeators *

# Array value separator
arr =", "
# Ranges constructed using .. run from the start_point..end_point inclusively
# to_a is used to convert it into array
range = (5..10).to_a
puts "#{range}"
# output [5, 6, 7, 8, 9, 10]

# For confirmation .. start point and end point run the code 
puts (5..10).include?(10)  #=> true

# The range created using ... exclude the end value
range_1 = (5...10).to_a
puts "#{range_1}"
# output [5, 6, 7, 8, 9]

puts (5...10).include?(10)  #=> false


# Case equality operator: ===, triple equals or threequals
# Ruby’s built-in classes, such as String, Range, and Regexp, 
# provide their own implementations of the === operator

puts String === "Ruby"  # Output: => true


# The === operator is called on a range object, 
# it returns true if the value on the right falls within the range
puts (1..5) === 3  # Output: => true
puts (1..5) === 3.345 # Output: => true 
puts (1..5) === 6  # Output: => false

# Usage of the === operator on case/when statements
minutes = 15

if (10..20) === minutes
  puts "match"
else
  puts "no match"
end

# Output: match


# * Logical Operators *

# Logical AND(&&) operator returns true when both the conditions in consideration are satisfied. 
# Otherwise it returns false. Using “and” is an alternate for && operator. For example, 
# a && b returns true when both a and b are true (i.e. non-zero).

if ARGV.length < 1
  puts "Needs an argument for age"
  exit
end

age = ARGV[0].to_f

if 18 < age and age < 23
   puts "In the range"
end


if 18 < age && age < 23
   puts "In the range"
end

# Logical OR(||) operator returns true when one (or both) of the conditions in consideration is satisfied. 
# Otherwise it returns false. Using “or” is an alternate for || operator. 
# For example, a || b returns true if one of a or b is true (i.e. non-zero). 
# it returns true when both a and b are true.


# Logical NOT(!): operator returns true the condition in consideration is not satisfied. 
# Otherwise it returns false. Using “not” is an alternate for ! operator. For example, 
# !true returns false.


# * Assignment Operators *


# * Bitwise Operators *


# * Ternary Operator * 


# * defined? Operator *


# Dot “.” and Double Colon “::” Operators

end 
require 'active_support/inflector'
# Auther @Shailesh Singh
# Create a program which checks the string counts in formate of CamelCase sequence also print the string separately
def in_words(int)
  numbers_to_name = {20 => "twenty",19=>"nineteen",18=>"eighteen",17=>"seventeen", 16=>"sixteen",15=>"fifteen",14=>"fourteen",13=>"thirteen",              
    12=>"twelve",11 => "eleven",10 => "ten",9 => "nine",8 => "eight",7 => "seven",6 => "six", 5 => "five", 4 => "four",
    3 => "three",2 => "two", 1 => "one"}
  str = ""
  numbers_to_name.each do |num, name|
    if int == 0
      return str
    elsif int.to_s.length == 1 && int/num > 0
      return str + "#{name}"      
    elsif int < 100 && int/num > 0
      return str + "#{name}" if int%num == 0
      return str + "#{name} " + in_words(int%num)
    elsif int/num > 0
      return str + in_words(int/num) + " #{name} " + in_words(int%num)
    end
  end
end 

# @Param str 
def countStrings(str)
  # scan will regx with scen the small word before the capital once and group them as 1 with flatten(1)
  camlcase = str.scan(/([a-zA-Z][^A-Z]*)/).flatten(1)
  uniq = camlcase.map { |s| s.downcase.singularize }.uniq
  # str_len will return the size of string
  str_len = uniq.size
  # strFirst will return the first Character of string
  strFirst_char = camlcase[0].chr
  puts str_len
  puts "String #{strFirst_char} contains #{in_words(str_len)} words:"
  for i in 0..str_len-1 do 
    puts "#{i+1}. #{camlcase[i]}"
  end 
end    

countStrings("saveChangesInTheEditor")




string = "this_string"
string.gsub!("this", "that") 
puts string #=> string = "that_string"

string = "this_string"
string.gsub("this", "that") 
puts string #=> string = "that_string"
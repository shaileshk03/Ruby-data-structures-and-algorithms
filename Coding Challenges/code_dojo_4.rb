# Auther @Shailesh Singh
# Create a program which checks the password is based on given criteria, if there is anything missing raise error

def passwordChecker(password)
  numbers = "0123456789" 
  char_low = "abcdefghijklmnopqrstuvwxyz"
  char_cap = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  special_char = "!@#$%^&*()-+"
  
  password_length = password.size
  puts "a.  #{password_length} characters long"
  
  str = password.split("")
  num_validation = str.any? {|p| numbers.include?(p)}
  lower_validation = str.any? {|p| char_low.include?(p)}
  capital_validation = str.any? {|p| char_cap.include?(p)}
  special_char_validation = str.any? {|p| special_char.include?(p)}
  
  for i in 1..1 do 
    arr = [[num_validation, lower_validation,capital_validation,special_char_validation]]
    arr_var = [num_validation, lower_validation,capital_validation,special_char_validation]
    
  end   
   obj_count = arr.transpose.map{|c|c.count(false)}
   if obj_count.count(1) == 0
    puts "b.	has at least one of each character type"
   else 
    puts "\nc. The minimum number of characters to add is #{obj_count.count(1)}."
   end   
end      

passwordChecker("Xad7w9H0MGpwn9mp9h7PO61C2JC0V618701Yxcd8A8A9zMA188OoG9ucw3a1IBAAQybESTg0hA3bo663FBEk8wnw930HfDw7ILs0")


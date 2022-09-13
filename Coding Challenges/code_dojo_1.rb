#require 'time'
#Time.parse('2013-04-11T20:28:07').in_time_zone('Athens').utc_offset

# Author @Shailesh
# @param string 
def formate_mobile_num(str)
   # country code    
   code = '91'
   # assign value to var
   num = str
   # delete everything accept numbers
   num.delete! "^0-9"
   # Take can take value length greater t
   num.length >= 10 && num.length <= 13
   # Converting value to char
   input_chars = num.chars
   # pop the last 10 digits and join them 
   phone_number = input_chars.pop(10).join
   # Join the country code 
   country_code = input_chars.join
   # Checking if country code is 0 if true replace with 91 else keep original code
   if country_code.empty?
      formatted_number = ["+" + code + phone_number] 
   elsif country_code == '0' 
      code = country_code.gsub(/\d+/, code)
      formatted_number = "+%d%d" % [code, phone_number]  
   else 
      formatted_number = "+%d%d" % [country_code, phone_number]  
   end    
   end
   
   puts formate_mobile_num("7896541230")



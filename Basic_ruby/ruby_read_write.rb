require 'date'



# where your options for <OPTION> are:
# r - Read only. The file must exist.
# w - Create an empty file for writing.
# a - Append to a file.The file is created if it does not exist.
# r+ - Open a file for update both reading and writing. The file must exist.
# w+ - Create an empty file for both reading and writing.
# a+ - Open a file for reading and appending. The file is created if it does not exist.


#file = File.read("C:/Users/ssingh/OneDrive/Desktop/read.txt").split
#f = File.open("C:/Users/ssingh/OneDrive/Desktop/txtfile.txt", "w")
#a = f.select{|x|x['@reading_type_enum']}.to_s.scan(/\d+/).to_s

begin
    file = File.open("C:/Users/ssingh/OneDrive/Desktop/TRAPP.log", "w")
    file.write("Script developed successfully on the desktop") 
  rescue IOError => e
    #some error occur, dir not writable etc.
  ensure
    file.close unless file.nil?
  end
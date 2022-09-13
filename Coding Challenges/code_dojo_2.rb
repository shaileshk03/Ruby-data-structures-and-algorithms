# @Author Shailesh
# Ruby program to convert and print time into words in IDC Dojo challenge
# @Param h, m hour and minutes
def timeInWords(hour, minute)
	#nums is an array which holds string objects
    nums = ["zero", "one", "two", "three", "four","five", "six", "seven", "eight", "nine","ten", "eleven", "twelve", "thirteen",
            "fourteen", "fifteen", "sixteen","seventeen", "eighteen", "nineteen","twenty", "twenty one", "twenty two",
            "twenty three", "twenty four","twenty five", "twenty six", "twenty seven","twenty eight", "twenty nine"]

    if (minute == 0)
	   # nums[index] it will print the index value based on hour arg so let say if hour is 5 then it'll print five
       print(nums[hour],"o' clock")
    elsif (minute == 1)
       print("one minute past ", nums[hour])
    elsif (minute == 59)
		# nums[(hour % 12) + 1], ex nums[(6 % 12) + 1] = 7 
       print("one minute to ", nums[(hour % 12) + 1])
    elsif (minute == 15)
       print("quarter past ", nums[hour])
    elsif (minute == 30)
       print("half past ", nums[hour])
    elsif (minute == 45)
       print("quarter to ", (nums[(hour % 12) + 1]))
    elsif (minute <= 30)
		# if minute is less than 30 print the minute and hour
      print(nums[minute]," minutes past ", nums[hour])
    elsif (m > 30)
		# if minute is greater than 30 let's assume 40 so 60 - 40 = 20 to the hour + 1
      print(nums[60 - minute], " minutes to ", nums[(hour % 12) + 1])
  end 
end   

timeInWords(5, 0)





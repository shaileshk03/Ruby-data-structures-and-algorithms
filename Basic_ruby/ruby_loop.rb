 class LoopClass
    # Loop is a block which let you repeat an action many times, you can also iterate over a list elements

    # 1) Ruby program to illustrate 'each loop'

    numbers = [1,2,3,4,5] 
    #numbers.each{|n|puts "Current number is: #{n}"} 
    # Output ---
    # Current number is: 1
    # Current number is: 2
    # Current number is: 3
    # Current number is: 4
    # Current number is: 5


    # Each block with condition to break the loop 
    numbers.each do |n|
        break if n == 3
        puts n # it will print the numbers before 3 
    end
    # Output
    # 1
    # 2
    
    # Each element with index
    array = ["A", "B", "C"]
    array.each_with_index {|val, index| puts "#{val} => #{index}" }
    # Output 
    # A => 0
    # B => 1
    # C => 2
    
    # Each index 
    array = ["A", "B", "C"]
    array.each_index {|val, index| puts "#{val} => #{index}" }
    # Output
    

    # Each Method With a Hash
    hash = {min: 2, max: 5}
    hash.each { |key, value| puts "k: #{key}, v: #{value}" }
    #Output 


    # Each Inject method
    number.inject(:+)


    # 2) Ruby program to illustrate 'Times Loop'
    10.times { puts "hello" }


    # 3) Ruby program to illustrate 'Range Looping'
    i = "Range loop"
    for a in 1..5 do   
        puts i
    end


    # 4) While loop (Conditional loop)
    x = 4
    while x >= 1
        # statements to be executed
        puts "conditionalloopex"
        x = x - 1
    end

    # 5) The upto method


    # 6) How to Stop A Loop Early


    # 7) Skipping Iterations With The Next Keyword


    # 8) Ruby program to illustrate 'until' loop
    var = 7
    until var == 11 do
        puts var * 10
        var = var + 1
    end 

    # 9) Ruby program to illustrate 'For..loop'  
    arr = ["India", "US", "UK", "Russia"]
    for i in arr do 
        puts i
    end


    # 10) Ruby program to illustrate 'do..while'loop
    loop do 
        puts "dowhileloop"
        val = '7'
        # using boolean expressions
        if val == '7'
            break
        end
    end
 end 



class Fibonacci_series
    
  # e.g. the fibonacci series up to 10 is: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55
  # there are two methods recursive and non-recursive approach

  #
  

  
  # recursive funtion using Proc
  def self.compute(index)
    f = fibonacci
    index.times { f.call }
    f.call
  end

  def self.fibonacci
    first_num = 1
    second_num = 0
    Proc.new {
      first_num, second_num = second_num, first_num + second_num
      first_num
    }
  end
  
  result = Fibonacci_series.compute(10)
  puts result

 
end 
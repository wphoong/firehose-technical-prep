require 'benchmark'

module Fib
  def self.recursive_fib(number)
    if number == 0
      0
    elsif number == 1
      1
    else
      recursive_fib(number-1) + recursive_fib(number-2)
    end
  end

  def self.iterative_fib(number)
    return 0 if number == 0
    return 1 if number == 1

    before_prev_sum = 0
    previous_sum = 1
    sum = 1

    (2..number).each do |x|
      before_prev_sum = previous_sum
      previous_sum = sum
      sum = previous_sum + before_prev_sum
    end
    previous_sum
  end
end


# puts Fib.recursive_fib(3)
puts Fib.iterative_fib(5)

num = 30
Benchmark.bm do |x|
  x.report("recursive_fib") { Fib.recursive_fib(num) }
  x.report("iterative_fib")  { Fib.iterative_fib(num)  }
end
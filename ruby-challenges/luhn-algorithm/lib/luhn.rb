module Luhn
  def self.is_valid?(number)
    #WRITE YOUR SOLUTION HERE
    doubled = []

    number.to_s.split('').reverse.each_with_index do |x, i|
      if i.odd?
        if x.to_i * 2 >= 10
          doubled << x.to_i * 2 - 9
        else
          doubled << x.to_i * 2
        end
      else
        doubled << x.to_i
      end
    end
    doubled.reduce(:+) % 10 == 0 ? true : false
  end
end

puts Luhn.is_valid?(4194560385008504)
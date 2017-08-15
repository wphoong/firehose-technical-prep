module Collatz
  def self.find_sequence(num)

    sequence = [num]

    until sequence.last == 1
      if sequence.last.even?
        sequence << sequence.last/2
      else
        sequence << 3*sequence.last+1
      end
    end
    sequence
  end
end

puts Collatz.find_sequence(7)

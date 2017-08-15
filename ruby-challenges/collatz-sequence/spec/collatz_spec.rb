require 'spec_helper.rb'

RSpec.describe Collatz, type: :model do
  describe 'Collatz' do
    it 'should have a sequence length of 1 for 1' do
      expect(Collatz.find_sequence(1)).to eq [1]
    end
    it 'should have a sequence length of 2 for 2' do
      expect(Collatz.find_sequence(2)).to eq [2,1]
    end
    it 'should have a sequence length of 8 for 3' do
      expect(Collatz.find_sequence(3)).to eq [3,10,5,16,8,4,2,1]
    end
    it 'should have a sequence length of 8 for 3' do
      expect(Collatz.find_sequence(7)).to eq [7,22,11,34,17,52,26,13,40,20,10,5,16,8,4,2,1]
    end
  end
end
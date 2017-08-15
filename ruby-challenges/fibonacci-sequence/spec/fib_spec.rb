require 'spec_helper'

RSpec.describe Fib, type: :model do
  describe 'recursive_fib' do
    it 'should calculate the 0 digit of the fib sequence' do
      expect(Fib.recursive_fib(0)).to eq 0
    end
    it 'should calculate the 1 digit of the fib sequence' do
      expect(Fib.recursive_fib(1)).to eq 1
    end
    it 'should calculate the 2 digit of the fib sequence' do
      expect(Fib.recursive_fib(2)).to eq 1
    end
    it 'should calculate the 3 digit of the fib sequence' do
      expect(Fib.recursive_fib(3)).to eq 2
    end
    it 'should calculate the 3 digit of the fib sequence' do
      expect(Fib.recursive_fib(8)).to eq 21
    end
    it 'should calculate the 3 digit of the fib sequence' do
      expect(Fib.recursive_fib(9)).to eq 34
    end
  end

  describe 'iterative_fib' do
    it 'should calculate the 0 digit of the fib sequence' do
      expect(Fib.iterative_fib(0)).to eq 0
    end
    it 'should calculate the 1 digit of the fib sequence' do
      expect(Fib.iterative_fib(1)).to eq 1
    end
    it 'should calculate the 2 digit of the fib sequence' do
      expect(Fib.iterative_fib(2)).to eq 1
    end
    it 'should calculate the 3 digit of the fib sequence' do
      expect(Fib.iterative_fib(3)).to eq 2
    end
    it 'should calculate the 3 digit of the fib sequence' do
      expect(Fib.iterative_fib(8)).to eq 21
    end
    it 'should calculate the 3 digit of the fib sequence' do
      expect(Fib.iterative_fib(9)).to eq 34
    end
  end

end
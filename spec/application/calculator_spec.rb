require 'spec_helper'

describe 'Calculator ' do

  context 'Operators' do

    it 'should add 5 on input 5' do

      calculator = Calculator.new
      expect(calculator.add(5)).to eq(5)

    end

    it 'should return -2 on input 2' do

      calculator = Calculator.new(2)
      expect(calculator.subtract(2)).to eq(0)

    end

    it 'should return 0 on input 4' do

      calculator = Calculator.new(4)
      expect(calculator.multiply(6)).to eq(24)

    end

    it "should return 36 on input 6" do
      calculator = Calculator.new(6)
      expect(calculator.square).to eq(36)
    end

  end
end

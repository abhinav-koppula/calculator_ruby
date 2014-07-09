require 'spec_helper'


describe Calculator do
  let(:calculator) { Calculator.new(6) }
  context 'addition' do
    it 'should add multiple values' do
      expect(calculator.add(3)).to eq(9)

    end


  end
  context 'subtraction' do
    it 'should subtract multiple values' do
      expect(calculator.subtract(3)).to eq(3)

    end
  end


  context 'multipication' do
    it 'should multiply multiple values' do
      expect(calculator.multiply(3)).to eq(18)

    end
  end


  context 'division' do
    it 'should divide multiple values' do
      expect(calculator.divide(3)).to eq(2)

    end
  end
  context 'reset' do
    it 'should reset value to 0' do
      expect(calculator.reset).to eq(0)

    end
  end

end
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

  context "Square root" do
    it 'should find square root of 9 as 3' do
      calculator1 = Calculator.new(9)
      expect(calculator1.sqrt).to eq(3.0)
    end

    it 'should find square root of -9 as 0' do
      calculator1 = Calculator.new(-9)
      expect(calculator1.sqrt).to eq(0)
    end

    it 'should find square root of 3 as 1.7' do
      calculator1 = Calculator.new(3)
      expect(calculator1.sqrt).to eq(1.7)
    end

  end

  context "Square" do
    it 'should find square root of 6 as 36.0' do
      expect(calculator.square).to eq(36.0)
    end

    it 'should find square root of -3 as 9.0' do
      calculator1 = Calculator.new(-3)
      expect(calculator1.square).to eq(9.0)
    end

  end

  context 'reset' do
    it 'should reset value to 0' do
      expect(calculator.reset).to eq(0)

    end
  end

  context 'absolute value' do
    it "should return 5 for -5" do
      calculator1 = Calculator.new(-5)
      expect(calculator1.abs).to eq(5.0)
    end


    it "should return 6 for 6" do
      calculator1 = Calculator.new(6)
      expect(calculator1.abs).to eq(6.0)
    end
  end

  context 'absolute value' do
    it "should return 5 for -5" do
      calculator1 = Calculator.new(-5)
      expect(calculator1.negate).to eq(5.0)
    end


    it "should return -6 for 6" do
      calculator1 = Calculator.new(6)
      expect(calculator1.negate).to eq(-6.0)
    end
  end

  context 'cube' do
    it "should return -125 for -5" do
      calculator1 = Calculator.new(-5)
      expect(calculator1.cube).to eq(-125.0)
    end


    it "should return 216 for 6" do
      calculator1 = Calculator.new(6)
      expect(calculator1.cube).to eq(216.0)
    end
  end

end
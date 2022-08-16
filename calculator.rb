require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end

    it 'should multiply numbers' do
      calculator = Calculator.new
      result = calculator.multiply(1, 3)
      expect(result).to eq(3)
    end

    it 'should divide numbers' do
      calculator = Calculator.new
      result = calculator.divide(3, 1)
      expect(result).to eq(3)
    end

    it 'should mulitply a number times itself' do
      calculator = Calculator.new
      result = calculator.square(6)
      expect(result).to eq(36)
    end
  
    it 'should find the power of a number'do
      calculator = Calculator.new
      result = calculator.power(3, 2)
      expect(result).to eq(9)
    end
  end
end
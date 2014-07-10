#Calculator class performs calculations
class Calculator
  def initialize(value=0)
    @value = value
  end

  def add(operand)
    @value = (@value + operand).round(1)
  end

  def subtract(operand)
    @value = (@value - operand).round(1)
  end


  def multiply(operand)
    @value = (@value * operand).round(1)
  end


  def divide(operand)
    return 0 if operand == 0
    @value = (@value/operand).round(1)
  end

  def sqrt
    @value = (@value >0 )?  Math.sqrt(@value).round(1) : 0
  end

  def square
    @value = (@value ** 2).round(1)
  end

  def reset
    @value = 0
  end

  def abs
    @value = @value.abs.round(1)
  end

  def negate
    @value = -1 * @value.round(1)
  end

  def cube
    @value = (@value ** 3).round(1)
  end
end


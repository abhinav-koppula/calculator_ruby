#Calculator class performs calculations
class Calculator
  def initialize(value=0)
    @value = value
  end

  def add(operand)
    @value = @value + operand
  end

  def subtract(operand)
    @value = @value - operand
  end


  def multiply(operand)
    @value = @value * operand
  end


  def divide(operand)
    return 0 if operand == 0
    @value = @value/operand
  end

  def reset
    @value = 0
  end
end


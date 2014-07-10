# delegate the operation
require_relative 'calculator'

class Router
  def initialize value=0
    @calculator = Calculator.new(value)
  end

  def route operation, operand
    exit if operation.to_s.downcase == "exit"
    operand = operand.to_i unless operand.nil?

    case operation
      when "add"
        @calculator.add(operand)
      when "subtract"
        @calculator.subtract(operand)
      when "multiply"
        @calculator.multiply(operand)
      when "divide"
        @calculator.divide(operand)
      when "cancel"
        @calculator.reset
      when "neg"
        @calculator.negate
      when "abs"
        @calculator.abs
      when "sqr"
        @calculator.square
      when "sqrt"
        @calculator.sqrt
      else
        nil
    end
  end

  private

  def exit
    Process.exit
  end
end
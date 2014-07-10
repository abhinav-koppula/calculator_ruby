#parses input and returns output string

require_relative 'Calculator'

class Parser
  def initialize
    @calculator = Calculator.new
  end

  def parse input
    operation, operand = input.split
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
      else
        nil
    end
  end

  private

  def exit
    Process.exit
  end



end

# parser.process("hahdj 5")
# parser = Parser.new

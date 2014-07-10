#parses input and returns output string

require_relative 'Calculator'

class Parser
  def initialize
    @calculator = Calculator.new
  end

  def process input
    operation, operand = input.split
    exit if operation.to_s.downcase == "exit"
    operand = operand.to_i unless operand.nil?

    case operation
      when "add"
        show @calculator.add(operand)
      when "subtract"
        show @calculator.subtract(operand)
      when "multiply"
        show @calculator.multiply(operand)
      when "divide"
        show @calculator.divide(operand)
      when "cancel"
        show @calculator.reset
      else
        show nil, "#{operation} is not supported."
    end
  end

  private

  def exit
    Process.exit
  end

  def show value, output=nil
    if value.nil?
      Kernel.puts output
    else
      Kernel.puts "The value now is #{value}"
    end
  end

end

parser = Parser.new
parser.process("hahdj 5")
#parses the input and show results to user
require_relative 'calculator'
class Console

  def initialize
    @calculator = Calculator.new
  end

  def console
    while 1
      puts "Enter a command"
      input
    end
  end

  def input
    parse Kernel.gets
  end

private
  def exit
    Process.exit
  end


  def parse input
    operation, operand = input.split
    exit if operation.to_s.downcase == "exit"

    case operation
      when "add"
        show @calculator.add(operand.to_i)
      when "subtract"
        show @calculator.subtract(operand.to_i)
      when "multiply"
        show @calculator.multiply(operand.to_i)
      when "divide"
       show @calculator.divide(operand.to_i)
      when "cancel"
        show @calculator.reset
      else
        Kernel.puts "#{operation} is not supported."
    end
  end

  def show value
    Kernel.puts "The value now is #{value}"
  end
end
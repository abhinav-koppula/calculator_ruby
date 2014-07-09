#parses the input and show results to user
require_relative 'calculator'
class Console
  OPERATIONS = {"add" => :add , "multiply" => :* , "cancel" => :reset, "exit" => :exit }

  def initialize
    @calculator = Calculator.new
  end

  def console
    #system "clear"
    print "Enter command:"
    while ((parse gets.chomp) != -1)
      print "Enter any key to continue ....."
      Kernel.gets
      print "Enter command:"
    end

  end

  def input
    Kernel.gets
  end

  def exit
    Process.exit
  end
private
  def parse input
    operation, operand = input.split
    return -1 if operation.to_s.downcase == "exit"

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
        puts "#{operation} is not supported."
    end
  end

  def show value
    puts "The value now is #{value}"
  end

end

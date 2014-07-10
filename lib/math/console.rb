#parses the input and show results to user
require_relative 'parser'
class Console

  def initialize
    @parser = Parser.new
  end

  def console
    while 1
      print "Enter a command >"
      input
    end
  end

  def input
    output = @parser.parse Kernel.gets
    show output
  end

private

  def show value
    if value.nil?
      Kernel.puts "Operation is not supported."
    else
      Kernel.puts "The value now is #{value}"
    end
  end
end
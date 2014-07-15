#Passes the user input to Parser
require_relative "parser"
class InputOutput
  def initialize(parser)
    @parser = parser
  end

  def console
    while 1
      input
    end
  end

  def input
    input = Kernel.gets
    command = @parser.parse(input)

    output command.execute
  end

  def output result
    Kernel.puts result
  end

end

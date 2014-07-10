#parses input and returns results
require_relative 'router'

class Parser
  def initialize value=0
    @router = Router.new(value)
  end

  def parse input
    operation, operand = input.split
    @router.route operation, operand
  end

end

# parser.process("hahdj 5")
# parser = Parser.new

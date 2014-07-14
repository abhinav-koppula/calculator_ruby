require_relative 'application/calculator'
require_relative 'application/router'
require_relative 'application/parser'
require_relative 'application/input_output'

class Application
  def initialize
    @operation
    @calculator = Calculator.new
    @router = Router.new(@calculator)
    @parser = Parser.new(@router)
    @input_output = InputOutput.new(@parser)

    @input_output.console
  end

end
Application.new
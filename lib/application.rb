require_relative 'application/calculator'
require_relative 'application/parser'
require_relative 'application/input_output'
require_relative 'application/command'
require_relative 'application/command_history'
require_relative 'application/add_command'
require_relative 'application/subtract_command'
require_relative 'application/cancel_command'
require_relative 'application/repeat_command'
require_relative 'application/exit_command'

class Application
  def initialize
    @command_history = CommandHistory.new
    @calculator = Calculator.new
    @parser = Parser.new(@command_history, @calculator)
    @input_output = InputOutput.new(@parser)

    @input_output.console
  end

end
#Application.new
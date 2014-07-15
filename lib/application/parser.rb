#Parser class parses the identifies the operand and the operator from the input string.

class Parser

  def initialize(command_history, calculator)
    @command_history = command_history
    @calculator = calculator
  end

  def parse input
    operation, operand = input.split

    if operation == "add"
      AddCommand.new(operand, @calculator, @command_history)
    elsif operation == "subtract"
      SubtractCommand.new(operand, @calculator, @command_history)
    elsif operation == "multiply"
      MultiplyCommand.new(operand, @calculator, @command_history)
    elsif operation == "cancel"
      CancelCommand.new(operand, @calculator, @command_history)
    elsif operation == "repeat"
      RepeatCommand.new(operand, @calculator, @command_history)
    elsif operation == "exit"
      ExitCommand.new(operand, @calculator, @command_history)
    end
  end

end
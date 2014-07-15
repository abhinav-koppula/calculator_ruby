#RepeatCommand is used to repeat the calculations
class RepeatCommand < Command


  def execute
    value = 0
    (@command_history.history.last(@operand)).each { |command| value = command.execute }
    value
  end

  def add_to_history

  end
end
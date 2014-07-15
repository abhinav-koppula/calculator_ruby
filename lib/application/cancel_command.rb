#CancelCommand delegates to calculator cancel method
class CancelCommand < Command
  def execute
    @calculator.cancel
  end
  def add_to_history

  end
end
#CommandHistory is used to store the hostory of all the operations performed
class CommandHistory
  attr_reader :history
  def initialize
    @history = []
  end

  def push command
    @history.push command
  end

  def pop
    @history.pop
  end
end
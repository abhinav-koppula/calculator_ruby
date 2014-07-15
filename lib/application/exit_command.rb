#ExitCommand is used to exit the process
class ExitCommand < Command

  def execute
    Process.exit
  end
  def add_to_history

  end

end
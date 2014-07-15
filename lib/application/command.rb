#It passes the control to calculator and IO class as and when required
class Command
  attr_reader :operand

  def initialize(operand, calculator, command_history)
    @operand = operand.to_f
    @calculator = calculator
    @command_history = command_history
    add_to_history
  end

  def ==(other)
    return true if self.equal?(other)
    return false if other.nil?
    return false if other.class != self.class
    @operand == other.operand
  end

  def hash
    37*[@operand].hash
  end

  def eql? other
    self == other
  end

  def execute
    raise 'Cannot be instantiated'
  end

  def add_to_history
    @command_history.push(self)
  end

end
# class MultiplyCommand < Command
#   def execute
#     @calculator.multiply(@operand)
#   end
# end
#
#
# class DivideCommand < Command
#   def execute
#     @calculator.divide(@operand)
#   end
# end

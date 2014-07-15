#SubtractCommand delegates to subtract method of calculator
class SubtractCommand < Command

  def execute
    @calculator.subtract(@operand)
  end
end
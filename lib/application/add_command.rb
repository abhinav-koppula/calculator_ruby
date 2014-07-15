#AddCommand class delegates to calculator's add method
class AddCommand < Command

  def execute
    @calculator.add(@operand)
  end
end
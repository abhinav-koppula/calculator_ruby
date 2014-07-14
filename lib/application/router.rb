#It passes the control to calculator and IO class as and when required
class Router

  def initialize(calculator)
    @calculator = calculator
  end

  def extract_operator(operation, operand)
    if operation == "add"
      @calculator.add(operand.to_f)

    elsif operation ==  "subtract"

      @calculator.subtract(operand.to_f)

    elsif operation == "multiply"

      @calculator.multiply(operand.to_f)

    elsif operation == "cancel"

      @calculator.cancel

    elsif operation == "sqr"

      @calculator.square

    elsif operation == "cube"
      @calculator.cube

    elsif operation == "sqrt"
      @calculator.sqrt

    elsif operation == "divide"
      @calculator.divide(operand.to_f)

    elsif operation == "cubert"
      @calculator.cubert

    elsif operation == "neg"
      @calculator.neg

    elsif operation == "exit"

      Process.exit

    end

  end

end
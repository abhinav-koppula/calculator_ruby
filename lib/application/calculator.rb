# Takes input value and performs appropriate function
class Calculator
  attr_reader :current_value
  def initialize (value = 0)
    @current_value = value
  end

  def add input
    @current_value = @current_value + input

  end

  def subtract input
    @current_value = @current_value - input

  end

  def multiply input
    @current_value = @current_value * input

  end

  def square
    @current_value = @current_value ** 2
  end

  def divide input
    @current_value = @current_value / input rescue 0
  end

  def sqrt
    if @current_value < 0
      @current_value = 0
    else
      @current_value = Math.sqrt(@current_value)
    end
  end

  def cube
    @current_value = @current_value ** (3)
  end


  def cubert
    if @current_value < 0
      @current_value = 0
    else
      @current_value = (@current_value ** (1/3.0)).round(1.0)
    end

  end

  def neg
    @current_value = -1 * @current_value
  end

  def cancel
    @current_value = 0
  end

end
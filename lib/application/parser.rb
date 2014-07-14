#Parser class parses the identifies the operand and the operator from the input string.

class Parser

  def initialize(router)
    @router = router
  end

  def parse input
    operation, operand = input.split
    @router.extract_operator(operation, operand)
  end
end
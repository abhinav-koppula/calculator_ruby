require 'spec_helper'

describe 'Parser' do

    it 'should return 5 on input 5' do
      command_history = CommandHistory.new
      calculator = Calculator.new
      parser = Parser.new(command_history, calculator)
      expect(parser.parse("add 5")).to eq(AddCommand.new("5",calculator, command_history))
    end
end
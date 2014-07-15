require 'spec_helper'

describe RepeatCommand do

  it 'should perform two repeat operations' do
    calculator = Calculator.new
    command_history =  CommandHistory.new
    AddCommand.new("5", calculator, command_history).execute
    SubtractCommand.new("2",calculator, command_history).execute
    AddCommand.new("4",calculator, command_history).execute
    RepeatCommand.new(2, calculator, command_history).execute
    expect(calculator.current_value).to eq(9)


  end
end
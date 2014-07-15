require 'spec_helper'

describe SubtractCommand do

  it 'should perform subtract operation' do
    command = SubtractCommand.new("3", Calculator.new, CommandHistory.new)
    expect(command.execute).to eq(-3.0)
  end
end
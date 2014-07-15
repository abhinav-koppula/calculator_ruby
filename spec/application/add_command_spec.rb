require 'spec_helper'

describe AddCommand do

  it 'should perform add operation' do
    command = AddCommand.new("5", Calculator.new, CommandHistory.new)
    expect(command.execute).to eq(5.0)
  end
end
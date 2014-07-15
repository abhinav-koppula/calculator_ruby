require 'spec_helper'

describe CancelCommand do
  it 'should perform cancel operation' do
    command = CancelCommand.new(nil, Calculator.new, CommandHistory.new)
    expect(command.execute).to eq(0)
  end
end
require 'spec_helper'

describe ExitCommand do

  it 'should exit from the process' do
    command = ExitCommand.new(nil, Calculator.new, CommandHistory.new)
    expect(Process).to receive(:exit)
    command.execute
  end
end
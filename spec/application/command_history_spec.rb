require 'spec_helper'

describe CommandHistory do

  it 'should push the "add 5" operation to the history array' do
    command_history = CommandHistory.new
    command = AddCommand.new("5", Calculator.new, command_history)
    command.execute
    expect(command_history.history.length).to eq(1) and expect(command_history.history[0]).to eq(AddCommand.new("5",Calculator.new, command_history))
  end
end
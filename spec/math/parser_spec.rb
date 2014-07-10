require 'spec_helper'

describe "Parser" do

  it 'should parse the input and return a value' do
    parser = Parser.new
    expect(parser.process("add 5")).to eq("The value now is 5")
  end
end
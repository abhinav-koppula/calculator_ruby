require 'spec_helper'

describe "Parser" do

  it 'should parse the input and return a value' do
    parser = Parser.new
    expect(parser.parse("add 5")).to eq(5)
  end
end
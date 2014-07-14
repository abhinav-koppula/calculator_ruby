require 'spec_helper'

describe 'Parser' do

    it 'should return 5 on input 5' do

      parser = Parser.new(Router.new(Calculator.new))
      expect(parser.parse("add 5")).to eq(5)
    end
end
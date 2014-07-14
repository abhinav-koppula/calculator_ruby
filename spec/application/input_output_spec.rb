require 'spec_helper'

describe 'Input Output' do

  it 'check whether input received in console' do
      io_operation = InputOutput.new(Parser.new(Router.new(Calculator.new)))
      expect(Kernel).to receive(:gets).and_return("add 5")
      expect(Kernel).to receive(:puts).with(5)
      io_operation.input

  end

   it 'should exit when receive input as exit ' do
       io_operation = InputOutput.new(Parser.new((Router.new(Calculator.new))))
       expect(Kernel).to receive(:gets).and_return("exit")
       expect(Process).to receive(:exit)
       io_operation.input
   end

end
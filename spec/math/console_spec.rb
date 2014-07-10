require 'spec_helper'

describe Console do
  let(:console) { Console.new }

  it 'invoking console calls gets' do
    allow(Kernel).to receive(:gets).and_return("add 5")
    expect(Kernel).to receive(:puts).with("The value now is 5.0")
    console.input
  end

  it 'invoking console calls gets' do
    operation = "blahblah"
    allow(Kernel).to receive(:gets).and_return("#{operation} 3 ")
    expect(Kernel).to receive(:puts).with("Operation is not supported.")
    console.input
  end

  it 'invoking exit calls Process.exit' do
    allow(Kernel).to receive(:gets).and_return("exit")
    expect(Process).to receive(:exit)

    console.input
  end

  it 'checks for divide by zero' do
    allow(Kernel).to receive(:gets).and_return("divide 0")
    expect(Kernel).to receive(:puts).with("The value now is 0")

    console.input
  end

end
require 'spec_helper'

describe Console do
  let(:console) { Console.new }
  context "parsing" do
    it "should parse as addition for add 5" do
      input = "add 5"
      expect(console.parse(input)).to eq(["add","5"])
    end
  end

  it 'invoking console calls gets' do
    allow(Kernel).to receive(:gets).and_return("add 5")
    expect(calculator).to receive(:add).with_arguments(5)
  end

  it 'invoking exit calls Process.exit' do
    expect(Process).to receive(:exit)
    expect(Kernel)
  end
end
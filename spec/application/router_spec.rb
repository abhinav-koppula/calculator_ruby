require 'spec_helper'

describe 'router' do

  it 'should route to specific function' do
    router = Router.new(Calculator.new)
    expect(router.extract_operator("add","5")).to eq(5)
  end
end
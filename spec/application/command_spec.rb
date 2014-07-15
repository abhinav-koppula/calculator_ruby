require 'spec_helper'

describe Command do
  context 'Not added to command history' do

    [ExitCommand, CancelCommand, RepeatCommand].each do |class_name|

      context 'CommandsHistory' do
        let(:command_history) { CommandHistory.new }
        let(:calculator) { Calculator.new }
        let(:command) { class_name.new("2", calculator, command_history) }
        it 'should not add command to commands history' do
          expect(command_history.history.length).to eq(0)
        end
      end

    end

  end

  context 'Added to History' do
    [AddCommand, SubtractCommand].each do |class_name|

      context 'CommandHistory' do
        let(:command_history) { CommandHistory.new }
        let(:calculator) { Calculator.new }
        let(:command) { class_name.new("2", calculator, command_history) }
        it 'should not add command to commands history' do
          expect(command_history.history.length).to eq(0)


        end

      end
    end

  end

  context "Equality Specs" do
    [AddCommand,SubtractCommand].each do |class_name|
      let(:command_history) { CommandHistory.new }
      let(:calculator) { Calculator.new }
      let(:command) { class_name.new("2", calculator, command_history) }
      it 'should not add command to commands history' do
        expect(command==command).to eq(TRUE)


      end

  end
end
end


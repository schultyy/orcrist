require 'spec_helper'
require 'wookie/interpreter'

describe 'Interpreter' do
  before do
    @interpreter = Interpreter.new
  end

  it 'interprets number' do
    expect(@interpreter.eval('5').ruby_value).to eq(5)
  end

  describe 'assignment' do
    before do
      @interpreter.eval('a = 5')
    end
    context 'context' do
      let(:root_context) { @interpreter.root_context }
      it 'context has a local' do
        expect(root_context.locals.length).to eq 1
      end

      it 'has local with ID "a"' do
        expect(root_context.locals.fetch('a')).to_not be_nil
      end

      it 'ID "a" has value 5' do
        expect(root_context.locals.fetch('a').ruby_value).to eq 5
      end
    end
  end
end

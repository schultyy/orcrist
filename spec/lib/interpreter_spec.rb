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
      it 'context has a local' do
        expect(RootContext.locals.length).to eq 1
      end

      it 'has local with ID "a"' do
        expect(RootContext.locals.fetch('a')).to_not be_nil
      end

      it 'ID "a" has value 5' do
        expect(RootContext.locals.fetch('a').ruby_value).to eq 5
      end
    end
  end
end

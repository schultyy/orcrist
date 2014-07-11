require 'spec_helper'
require 'wookie/interpreter'

describe 'Interpreter' do
  let(:code) { '' }
  let(:root_context) { @interpreter.root_context }

  before do
    @interpreter = Interpreter.new
    @interpreter.eval(code)
  end

  it 'interprets number' do
    expect(@interpreter.eval('5').ruby_value).to eq(5)
  end

  describe 'assignment' do
    let(:code) { 'a = 5' }
    context 'root context' do
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

  describe 'nil assignment' do
    let(:code) { 'a = nil' }
    context 'root context' do
      let(:local_var) { root_context.locals.fetch('a') }
      it 'has variable "a" with value "nil"' do
        expect(local_var.ruby_value).to eq nil
      end
    end
  end
end

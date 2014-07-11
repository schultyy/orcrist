require 'spec_helper'
require 'wookie/interpreter'

describe 'Interpreter' do
  before do
    @interpreter = Interpreter.new
  end

  it 'interprets number' do
    expect(@interpreter.eval('5').ruby_value).to eq(5)
  end
end

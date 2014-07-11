require 'spec_helper'
require 'wookie/lexer'

describe "Lexer" do
  before do
    @lexer = WookieLexer.new
  end

  it 'tokenizes assignment' do
    tokens = @lexer.tokenize('a = 5')
    expect(tokens).to eq([
      [:IDENTIFIER, 'a'],
      ['=', '='],
      [:NUMBER, 5]
    ])
  end

  it 'tokenizes string' do
    tokens = @lexer.tokenize('a = "Foo"')
    expect(tokens).to eq([
      [:IDENTIFIER, 'a'],
      ['=', '='],
      [:STRING, 'Foo']
    ])
  end
end

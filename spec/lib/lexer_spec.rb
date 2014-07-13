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

  it 'tokenizes true' do
    tokens = @lexer.tokenize('a = true')
    expect(tokens).to eq([
      [:IDENTIFIER, 'a'],
      ['=', '='],
      [:TRUE, 'true']
    ])
  end

  it 'tokenizes false' do
    tokens = @lexer.tokenize('a = false')
    expect(tokens).to eq([
      [:IDENTIFIER, 'a'],
      ['=', '='],
      [:FALSE, 'false']
    ])
  end

  it 'tokenizes statements separated by Newline' do
    code = <<-CODE
a = 5
b = "foo bar baz"
    CODE
    tokens = @lexer.tokenize(code)
    expect(tokens).to eq([
      [:IDENTIFIER, 'a'],
      ['=', '='],
      [:NUMBER, 5],
      [:NEWLINE,"\n"],
      [:IDENTIFIER, 'b'],
      ['=', '='],
      [:STRING, 'foo bar baz']
    ])
  end

  it 'tokenizes nil assignment' do
    tokens = @lexer.tokenize('a = nil')
    expect(tokens).to eq([
      [:IDENTIFIER, 'a'],
      ['=', '='],
      [:NIL, 'nil']
    ])
  end

  it 'tokenizes if statement' do
    code = <<-CODE
if foo:
  true
CODE
    tokens = @lexer.tokenize(code)
    expect(tokens).to eq([
      [:IF, 'if'], [:IDENTIFIER, 'foo'],
      [:INDENT, 2],
      [:TRUE, 'true'],
      [:DEDENT, 0]
    ])
  end

  it 'tokenizes def statement' do
    code = <<-CODE
def foo:
  true
CODE
    tokens = @lexer.tokenize(code)
    expect(tokens).to eq([
      [:DEF, 'def'], [:IDENTIFIER, 'foo'],
      [:INDENT, 2],
      [:TRUE, 'true'],
      [:DEDENT, 0]
    ])
  end
end

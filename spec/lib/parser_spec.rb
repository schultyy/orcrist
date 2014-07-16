require 'spec_helper'
require 'wookie/parser'

describe "Parser" do
  before do
    @parser = WookieParser.new
  end

  it 'parses assignment' do
    code = "a = 5"
    nodes = Nodes.new([
      SetLocalNode.new('a', NumberNode.new(5))
    ])
    expect(@parser.parse(code)).to eq nodes
  end

  it "parses true assignment" do
    code = "a = true"
    nodes = Nodes.new([
      SetLocalNode.new('a', TrueNode.new)
    ])
    expect(@parser.parse(code)).to eq(nodes)
  end

  it "parses false assignment" do
    code = "a = false"
    nodes = Nodes.new([
      SetLocalNode.new('a', FalseNode.new)
    ])
    expect(@parser.parse(code)).to eq(nodes)
  end

  it 'parses nil assignment' do
    code = 'a = nil'
    nodes = Nodes.new([
      SetLocalNode.new('a', NilNode.new)
    ])
    expect(@parser.parse(code)).to eq(nodes)
  end

  it 'parses if statement' do
    code = <<-CODE
if foo:
  true
    CODE
    nodes = Nodes.new([
      IfNode.new(GetLocalNode.new('foo'), Nodes.new([TrueNode.new]))
    ])
    expect(@parser.parse(code)).to eq(nodes)
  end

  context 'method definition' do
    it 'parses without params' do
      code = <<-CODE
def foo:
  true
      CODE
      nodes = Nodes.new([
        DefNode.new('foo', [], Nodes.new([TrueNode.new]))
      ])
      expect(@parser.parse(code)).to eq(nodes)
    end

    it 'parses with params' do
      code = <<-CODE
def foo(bar, baz):
  baz
      CODE
      nodes = Nodes.new([
        DefNode.new('foo', ['bar', 'baz'],
                    Nodes.new([GetLocalNode.new('baz')]))
      ])
      expect(@parser.parse(code)).to eq(nodes)
    end
  end

  context 'method call' do
    it 'parses without arguments' do
      code = 'foo'

      nodes = Nodes.new([
        GetLocalNode.new('foo')
      ])
      expect(@parser.parse(code)).to eq(nodes)
    end

    it 'parses with arguments' do
      code = 'foo(a, b)'

      nodes = Nodes.new([
        CallNode.new(nil, 'foo',
                     [GetLocalNode.new('a'),
                      GetLocalNode.new('b')])
      ])
      expect(@parser.parse(code)).to eq(nodes)
    end
  end
end

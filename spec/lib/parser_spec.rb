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
    expect(@parser.parse(code,true)).to eq(nodes)
  end
end

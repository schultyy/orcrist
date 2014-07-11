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
end

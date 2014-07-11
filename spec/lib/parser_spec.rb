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
end

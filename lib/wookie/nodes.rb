class Nodes < Struct.new(:nodes)
  def <<(node) # Useful method for adding a node on the fly.
    nodes << node
    self
  end
end

class LiteralNode < Struct.new(:value); end
class NumberNode < LiteralNode; end
class StringNode < LiteralNode; end

class CallNode < Struct.new(:receiver, :method, :arguments); end

class GetLocalNode < Struct.new(:name); end

class SetLocalNode < Struct.new(:name, :value); end
require 'wookie/parser'
require 'wookie/runtime/wookie_object'
require 'wookie/runtime/wookie_class'
require 'wookie/runtime/wookie_method'
require 'wookie/runtime/context'
require 'wookie/runtime/bootstrap'

class Interpreter
  def initialize
    @parser = WookieParser.new
  end

  def eval(code)
    @parser.parse(code).eval(RootContext)
  end
end

class Nodes
  def eval(context)
    return_value = nil
    nodes.each do |node|
      return_value = node.eval(context)
    end
    return_value || Constants["nil"]
  end
end

class NumberNode
  def eval(context)
    Constants["Number"].new_with_value(value)
  end
end

class StringNode
  def eval(context)
    Constants["String"].new_with_value(value)
  end
end

class TrueNode
  def eval(context)
    Constants["true"]
  end
end

class FalseNode
  def eval(context)
    Constants["false"]
  end
end

class GetLocalNode
  def eval(context)
    context.locals[name]
  end
end

class SetLocalNode
  def eval(context)
    context.locals[name] = value.eval(context)
  end
end

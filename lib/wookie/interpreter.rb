require 'wookie/parser'
require 'wookie/runtime/wookie_object'
require 'wookie/runtime/wookie_class'
require 'wookie/runtime/wookie_method'
require 'wookie/runtime/context'
require 'wookie/runtime/bootstrap'

class Interpreter
  attr_reader :root_context
  def initialize
    @parser = WookieParser.new
    root_self = Constants["Object"].new
    @root_context = Context.new(root_self)
  end

  def eval(code)
    @parser.parse(code).eval(@root_context)
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

class NilNode
  def eval(context)
    Constants['nil']
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

class DefNode
  def eval(context)
    method = WookieMethod.new(params, body)
    context.current_class.runtime_methods[name] = method
  end
end

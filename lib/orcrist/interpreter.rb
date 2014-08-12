require 'orcrist/parser'
require 'orcrist/runtime/orcrist_object'
require 'orcrist/runtime/orcrist_class'
require 'orcrist/runtime/orcrist_method'
require 'orcrist/runtime/context'
require 'orcrist/runtime/bootstrap'

class Interpreter
  attr_reader :root_context
  def initialize
    @parser = OrcristParser.new
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
    if context.current_class.runtime_methods.include?(name)
      context.current_class.runtime_methods[name]
    else
      context.locals[name]
    end
  end
end

class SetLocalNode
  def eval(context)
    evaled = value.eval(context)
    if evaled.class == OrcristMethod
      context.current_class.alias_method(name, value.name)
    end
    context.locals[name] = evaled
  end
end

class DefNode
  def eval(context)
    method = OrcristMethod.new(params, body)
    context.current_class.runtime_methods[name] = method
  end
end

class CallNode
  def eval(context)
    if receiver
      value = receiver.eval(context)
    else
      value = context.current_self # Default to `self` if no receiver.
    end
    evaluated_arguments = arguments.map { |arg| arg.eval(context) }
    value.call(method, evaluated_arguments)
  end
end

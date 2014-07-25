class WookieClass < WookieObject
  attr_reader :runtime_methods

  def initialize
    @runtime_methods = {}
    @runtime_class = Constants['Class']
  end

  def lookup(method_name)
    method = @runtime_methods[method_name]
    raise "Method not found: #{method_name}" if method.nil?
    method
  end

  def def(name, &block)
    @runtime_methods[name.to_s] = block
  end

  def new
    WookieObject.new(self)
  end

  def new_with_value(value)
    WookieObject.new(self, value)
  end
end

class NumberClass < WookieClass
  def initialize
    super
    initalize_runtime_methods
  end

  private

  def initalize_runtime_methods
    self.def "+" do |receiver, arguments|
      operand = arguments.first
      if operand.ruby_value.instance_of?(Fixnum)
        result = receiver.ruby_value + arguments.first.ruby_value
      else
        raise RuntimeError, "Method '+' not defined for types #{receiver.class}, #{operand.class}"
      end
      Constants["Number"].new_with_value(result)
    end

    self.def "-" do |receiver, arguments|
      operand = arguments.first
      if operand.ruby_value.instance_of?(Fixnum)
        result = receiver.ruby_value - arguments.first.ruby_value
      else
        raise RuntimeError, "Method '-' not defined for types #{receiver.class}, #{operand.class}"
      end
      Constants["Number"].new_with_value(result)
    end
  end
end

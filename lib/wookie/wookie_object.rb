class WookieObject
  attr_reader :runtime_class, :ruby_value

  def initialize(runtime_class, ruby_value = self)
    @runtime_class = runtime_class
    @ruby_value = ruby_value
  end
end

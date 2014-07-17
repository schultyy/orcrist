module Wookie
  class Constants
    def initialize
      @constants =  {}
      bootstrap_types
      bootstrap_methods
    end
    def []=(key, value)
      @constants[key] = value
    end

    def [](key)
      @constants[key]
    end

    private
    def bootstrap_types
      self['Class'] = WookieClass.new
      self['Class'].runtime_class = self['Class']
      self['Object'] = WookieClass.new
      self['Number'] = WookieClass.new
      self['String'] = WookieClass.new

      self['TrueClass'] = WookieClass.new
      self['FalseClass'] = WookieClass.new
      self['NilClass'] = WookieClass.new

      self['true'] = self['TrueClass'].new_with_value(true)
      self['false'] = self['FalseClass'].new_with_value(false)
      self['nil'] = self['NilClass'].new_with_value(nil)
    end

    def bootstrap_methods
      self["Class"].def :new do |receiver, arguments|
        receiver.new
      end

      self["Object"].def :print do |receiver, arguments|
        puts arguments.first.ruby_value
        self["nil"]
      end

      self["Number"].def "+" do |receiver, arguments|
        operand = arguments.first
        if operand.ruby_value.instance_of?(Fixnum)
          result = receiver.ruby_value + arguments.first.ruby_value
        else
          raise RuntimeError, "Method '+' not defined for types #{receiver.class}, #{operand.class}"
        end
        self["Number"].new_with_value(result)
      end

      self["Number"].def "-" do |receiver, arguments|
        operand = arguments.first
        if operand.ruby_value.instance_of?(Fixnum)
          result = receiver.ruby_value - arguments.first.ruby_value
        else
          raise RuntimeError, "Method '-' not defined for types #{receiver.class}, #{operand.class}"
        end
        self["Number"].new_with_value(result)
      end
    end
  end
end

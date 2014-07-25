Constants = {}

Constants["Class"] = WookieClass.new
Constants["Class"].runtime_class = Constants["Class"]
Constants["Object"] = WookieClass.new
Constants["Number"] = NumberClass.new
Constants["String"] = WookieClass.new

Constants["TrueClass"] = WookieClass.new
Constants["FalseClass"] = WookieClass.new
Constants['NilClass'] = WookieClass.new

Constants["true"] = Constants["TrueClass"].new_with_value(true)
Constants["false"] = Constants["FalseClass"].new_with_value(false)
Constants['nil'] = Constants['NilClass'].new_with_value(nil)

Constants["Class"].def :new do |receiver, arguments|
  receiver.new
end

Constants["Object"].def :print do |receiver, arguments|
  puts arguments.first.ruby_value
  Constants["nil"]
end


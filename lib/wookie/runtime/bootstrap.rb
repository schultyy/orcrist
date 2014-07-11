
Constants = {}

Constants["Class"] = WookieClass.new
Constants["Class"].runtime_class = Constants["Class"]
Constants["Object"] = WookieClass.new
Constants["Number"] = WookieClass.new
Constants["String"] = WookieClass.new

root_self = Constants["Object"].new
RootContext = Context.new(root_self)

Constants["TrueClass"] = WookieClass.new
Constants["FalseClass"] = WookieClass.new

Constants["true"] = Constants["TrueClass"].new_with_value(true)
Constants["false"] = Constants["FalseClass"].new_with_value(false)

Constants["Class"].def :new do |receiver, arguments|
  receiver.new
end

Constants["Object"].def :print do |receiver, arguments|
  puts arguments.first.ruby_value
  Constants["nil"]
end

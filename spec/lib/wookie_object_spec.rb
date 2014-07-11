require 'spec_helper'
require 'wookie/wookie_object'

describe 'WookieObject' do
  it 'assigns runtime class' do
    obj = WookieObject.new(Object)
    expect(obj.runtime_class).to eq Object
  end

  it 'assigns ruby value' do
    obj = WookieObject.new(Object, self)
    expect(obj.ruby_value).to eq self
  end
end

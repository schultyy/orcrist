require 'spec_helper'
require 'orcrist/runtime/orcrist_object'

describe 'OrcristObject' do
  it 'assigns runtime class' do
    obj = OrcristObject.new(Object)
    expect(obj.runtime_class).to eq Object
  end

  it 'assigns ruby value' do
    obj = OrcristObject.new(Object, self)
    expect(obj.ruby_value).to eq self
  end
end

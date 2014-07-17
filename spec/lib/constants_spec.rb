require 'spec_helper'
require 'wookie/runtime/constants'

describe 'Constants' do
  before do
    @constants = Wookie::Constants.new
  end

  context 'classes' do
    it 'has WookieClass' do
      expect(@constants['Class']).to_not be_nil
    end

    it 'has WookieObject' do
      expect(@constants['Object']).to_not be_nil
    end

    it 'has Number class' do
      expect(@constants['Number']).to_not be_nil
    end

    it 'has String class' do
      expect(@constants['String']).to_not be_nil
    end

    it 'has True class' do
      expect(@constants['TrueClass']).to_not be_nil
    end

    it 'has False class' do
      expect(@constants['FalseClass']).to_not be_nil
    end
  end

  context 'values' do
    it 'has "true" value' do
      expect(@constants['true'].ruby_value).to eq(true)
    end

    it 'has "false" value' do
      expect(@constants['false'].ruby_value).to eq(false)
    end

    it 'has "nil" value' do
      expect(@constants['nil'].ruby_value).to eq(nil)
    end
  end

  context 'Methods' do
    context 'Class' do
      it 'has "new" method' do
        methods = @constants['Class'].runtime_methods
        expect(methods['new']).to_not be_nil
      end
    end
    context 'Object' do
      it 'has "print" method' do
        methods = @constants['Object'].runtime_methods
        expect(methods['print']).to_not be_nil
      end
    end
    context 'Number' do
      let(:methods) { @constants['Number'].runtime_methods }
      it 'has "+" method' do
        expect(methods['+']).to_not be_nil
      end

      it 'has "-" method' do
        expect(methods['-']).to_not be_nil
      end
    end
  end
end

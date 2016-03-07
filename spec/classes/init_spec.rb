require 'spec_helper'
describe 'vmwaretools' do

  context 'with defaults for all parameters' do
    it { should contain_class('vmwaretools') }
  end
end

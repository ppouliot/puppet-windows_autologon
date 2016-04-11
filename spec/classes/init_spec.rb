require 'spec_helper'
describe 'windows_autologon' do

  context 'with defaults for all parameters' do
    it { should contain_class('windows_autologon') }
  end
end

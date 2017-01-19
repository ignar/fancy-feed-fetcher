require 'spec_helper'

RSpec.describe Filter do
  subject { FactoryGirl.build(:filter) }
  it { is_expected.to be_valid }
end

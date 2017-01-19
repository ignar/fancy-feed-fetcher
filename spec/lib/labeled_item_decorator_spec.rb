require 'rails_helper'

RSpec.describe LabeledItemDecorator do
  let(:item) { FactoryGirl.create(:item) }

  subject { described_class.new(item) }

  it { is_expected.to respond_to(:filter_color) }
end

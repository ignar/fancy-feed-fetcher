require 'rails_helper'

RSpec.describe ItemsFilterService do
  let(:black_filter) { FactoryGirl.create(:filter, label: 'black', pattern: 'Node') }
  let(:white_filter) { FactoryGirl.create(:filter, label: 'white', pattern: 'Python') }
  let(:filters) { [black_filter, white_filter] }

  let(:items) { FactoryGirl.create_list(2, :items) }

  subject { described_class.call(filters: filters, items: items) }

  it 'returns decorated items' do
    expect(subject.first).to be_kind_of(LabeledItemDecorator)
  end
end

require 'rails_helper'

RSpec.describe ItemsFilterMatcher do
  let(:item_with_match) { FactoryGirl.create(:item, title: 'Turbo Pascal Compiler (2013)') }
  let(:item_without_match) { FactoryGirl.create(:item, title: 'Japanese toilet industry agrees to standardize complex bidet controls') }
  let(:filter) { FactoryGirl.create(:filter, label: 'yellow', pattern: 'pascal') }

  context 'where match exists' do
    it 'apply filter' do
      result = described_class.call(item: item_with_match, filter: filter)
      expect(result.filter_color).to eq(filter.label)
    end
  end

  context 'where match does not exist' do
    it 'does not apply filter' do
      result =described_class.call(item: item_without_match, filter: filter)
      expect(result.filter_color).to be_nil
    end
  end
end

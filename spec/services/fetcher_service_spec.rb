require 'rails_helper'

RSpec.describe FetcherService do
  let(:url) { 'https://news.ycombinator.com/rss' }
  let(:source) { FactoryGirl.create(:source, url: url) }
  subject { described_class.new(source) }

  it { is_expected.to respond_to(:source) }

  before do
    stub_request(:get, url).
      to_return(status: 200, body: Rails.root.join('spec', 'fixtures', 'ycombinator.xml'))
  end

  describe '#call' do
    subject do
      fetcher = described_class.new(source)
      fetcher.call
    end

    it 'returns collection' do
      expect(subject.count).to eq(30)
    end

    it 'returns entries' do
      expect(subject.first).to be_kind_of(Fetcher::Entry)
    end
  end
end

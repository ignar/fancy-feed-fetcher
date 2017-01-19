require 'rails_helper'

RSpec.describe Fetcher::EntryBuilder do
  it 'returns source item' do
    expect(subject.entry).to be_kind_of(Fetcher::Entry)
  end
end

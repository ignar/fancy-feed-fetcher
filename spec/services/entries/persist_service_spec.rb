require 'rails_helper'

RSpec.describe Entries::PersistService do
  let(:entry) { double('Entry', save: true) }
  let(:entries) { [entry] }

  it 'saves each entry' do
    expect(entry).to receive(:save)
    described_class.call(entries)
  end
end

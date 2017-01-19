require 'rails_helper'

RSpec.describe Fetcher::Entry do
  it { is_expected.to respond_to(:title) }
  it { is_expected.to respond_to(:url) }
  it { is_expected.to respond_to(:published) }
  it { is_expected.to respond_to(:summary) }
end

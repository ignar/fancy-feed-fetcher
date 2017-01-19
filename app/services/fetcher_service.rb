class FetcherService
  attr_reader :source
  attr_reader :adapter

  def initialize(source, adapter: Feedjira::Feed)
    @source = source
    @adapter = adapter
  end

  def call
    parsed_source = fetch_and_parse
    parsed_source.entries.map do |entry|
      builder = Fetcher::EntryBuilder.new
      builder.add_title(entry.title)
      builder.add_url(entry.url)
      builder.add_published(entry.published)
      builder.add_summary(entry.summary)
      builder.add_categories(entry.categories)
      builder.entry
    end
  end

  private

  def fetch_and_parse
    adapter.fetch_and_parse(source.url)
  end
end

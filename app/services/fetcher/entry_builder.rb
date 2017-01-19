module Fetcher
  class EntryBuilder
    attr_reader :entry

    def initialize(entry_class: Fetcher::Entry)
      @entry = entry_class.new
    end

    def add_title(title)
      entry.title = title
    end

    def add_url(url)
      entry.url = url
    end

    def add_published(published)
      entry.published = published
    end

    def add_summary(summary)
      entry.summary = summary
    end

    def add_categories(categories)
      entry.categories = categories
    end
  end
end

module Entries
  class PersistService
    attr_reader :entries

    def initialize(entries)
      @entries = entries
    end

    def call
      entries.each do |entry|
        entry.save
      end
    end

    def self.call(entries)
      new(entries).call
    end
  end
end

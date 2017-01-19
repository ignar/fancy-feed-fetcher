class ItemsFilterService
  attr_reader :filters
  attr_reader :items

  def initialize(items, filters)
    @items = items
    @filters = filters
  end

  def call
  end

  def self.call(items: , filters:)
    new(items, filters)
  end
end

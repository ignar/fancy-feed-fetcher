class ItemsFilterMatcher
  attr_reader :decorator
  attr_reader :item
  attr_reader :filter

  def initialize(item, filter, decorator)
    @item = item
    @filter = filter
    @decorator = decorator
  end

  def call
    decorator.new(item).tap do |d|
      if /#{filter.pattern}/i.match(item.title)
        d.filter_color = filter.label
      end
    end
  end

  def self.call(item: , filter:, decorator: LabeledItemDecorator)
    new(item, filter, decorator).call
  end
end

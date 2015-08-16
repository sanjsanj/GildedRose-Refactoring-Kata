class GildedRose
  attr_reader :items

  def initialize items
    @items = items
  end

  def update_quality
    items.each do |item|
      item.sell_in -= 1
      item.quality > 0 ? lower_quality(item) : nil
    end
  end

  def lower_quality item
    item.quality -= 1
    item.sell_in < 0 ? lower_sell_in(item) : nil
  end

  def lower_sell_in item
    item.quality -= 1
  end
end

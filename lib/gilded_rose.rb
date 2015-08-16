class GildedRose
  attr_reader :items

  def initialize items
    @items = items
  end

  def update_quality
    items.each do |item|
      item.sell_in -= 1
      lower_quality item if item.quality > 0
    end
  end

  def lower_quality item
    item.sell_in < 0 ? item.quality -= 2 : item.quality -= 1
  end
end

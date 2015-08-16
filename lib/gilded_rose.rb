class GildedRose
  attr_reader :items

  def initialize items
    @items = items
  end

  def update_quality
    items.each do |item|
      item.sell_in -= 1
      item.quality -= 1 if item.quality > 0
    end
  end
end

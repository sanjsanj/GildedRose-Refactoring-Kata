require 'item'

class GildedRose
  attr_reader :items

  def initialize items
    @items = items
  end

  def update_quality
    items.each do |item|
      if item.name != "Aged Brie" and item.name != "Backstage passes to a TAFKAL80ETC concert"
        if item.quality > 0
          item.quality -= 1
        end
      else
        if item.quality < 50
          item.quality = item.quality + 1
          if item.name == "Backstage passes to a TAFKAL80ETC concert"
            if item.sell_in < 11
              if item.quality < 50
                item.quality += 1
              end
            end
            if item.sell_in < 6
              if item.quality < 50
                item.quality += 1
              end
            end
          end
        end
      end

      item.sell_in -= 1 if item.name != "Sulfuras, Hand of Ragnaros"

      if item.sell_in < 0
        if item.name != "Aged Brie"
          if item.name != "Backstage passes to a TAFKAL80ETC concert"
            item.quality -= 1 if item.quality > 0
          else
            item.quality = 0
          end
        else
          item.quality += 1 if item.quality < 50
        end
      end
    end
  end
end

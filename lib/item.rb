class Item
  attr_reader :name
  attr_accessor :sell_in, :quality

  def initialize name, sell_in, quality
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  private

  def to_s
    "#{name}, #{sell_in}, #{quality}"
  end
end

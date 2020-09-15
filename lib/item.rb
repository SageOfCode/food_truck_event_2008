class Item
  attr_reader :name, :price, :inventory
  def initialize(data)
    @name = data[:name]
    @price = data[:price]
    @inventory = Hash.new(0)
  end
end

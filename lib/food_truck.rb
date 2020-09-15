class FoodTruck
  attr_reader :name , :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def stock(item, num)
    @inventory[item] += num
  end

  def check_stock(stock)
    total = 0
      @inventory.each do |item, quantity|
        total += cost
    end
    total
  end
end

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

  def potential_revenue
    total = 0
    @inventory.each do |food, count|
      total += food.price.gsub(/[^\d\.]/, '').to_f * count
    end
    total
  end
end

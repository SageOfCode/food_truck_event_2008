class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(menu_item)
    trucks_that_sell_menu_item = []
      @food_trucks.each do |truck|
        truck.inventory.each do |item, count|
          if item.name.include? menu_item.name
            trucks_that_sell_menu_item << truck
        end
      end
    end
    trucks_that_sell_menu_item
  end

  def total_inventory
    truck_and_quantity_by_item = Hash.new
    @food_trucks.each do |truck|
      truck.inventory.each do |item, count|
        item_details = {quantity: count, food_trucks: gather_trucks(truck)}
        truck_and_quantity_by_item[item] = item_details
      end
    end
    truck_and_quantity_by_item
  end

  def gather_trucks(truck)
    trucks_with_item = []
      truck.inventory.each do |item, count|
        trucks_with_item << truck
      end
      trucks_with_item
  end
end

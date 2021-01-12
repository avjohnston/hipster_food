class Event
  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |food_truck|
      food_truck.inventory.keys.include?(item)
    end
  end

  def item_list
    items = @food_trucks.flat_map do |food_truck|
      food_truck.inventory.flat_map do |key, value|
        key.name
      end
    end.uniq
  end

  def sorted_item_list
    item_list.sort_by do |item|
      item[0]
    end
  end

  def overstocked_items
    inventory = @food_trucks.map do |food_truck|
      food_truck.inventory
    end
    inventory.map do |key, value|
  end

  # def total_inventory
  #   hash = Hash.new
  #
  #   items = @food_trucks.flat_map do |food_truck|
  #     food_truck.inventory.keys
  #   end
  #
  #   items.find_all do |item|
  #
  # end

end

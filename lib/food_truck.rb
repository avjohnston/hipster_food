class FoodTruck
attr_reader :name,
            :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new
  end

  def stock(item, quantity)
    if @inventory.keys.include?(item)
      @inventory[item] += quantity
    else
      @inventory[item] = quantity
    end
    @inventory[item]
  end

  def check_stock(item)
    return 0 if @inventory[item].nil?
    @inventory[item]
  end

  def potential_revenue
    keys = @inventory.map do |key, value|
      key.price * value
    end.sum
  end

end

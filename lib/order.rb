class Order

  attr_reader :dishes

  def initialize
    @dishes = Hash.new(0)
  end

  def choose(dish)
    @dishes[dish] += 1
  end

  def total_price
    total = 0
    dishes.each {|dish, quantity| total += dish.price * quantity}
    total
  end

end
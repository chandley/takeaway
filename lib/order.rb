class Order
  attr_reader :dishes

  def initialize
    @dishes = Hash.new(0)
  end

  def choose(dish)
    @dishes[dish] += 1
  end

end
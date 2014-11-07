class Order
  attr_reader :dishes

  def initialize
    @dishes = []
  end

  def choose(dish)
    @dishes << dish
  end

end
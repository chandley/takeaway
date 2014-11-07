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

  def show
    puts 'Your current order'
    dishes.each {|dish, quantity| show_line(dish, quantity)}
    puts 'TOTAL = ' + total_price
  end

  def show_line(dish, quantity)
    format_line(quantity.to_s,dish.name,dish.price.to_s, quantity * dish.price.to_s)
  end

  def format_line(quantity,name,price,subtotal)
    puts quantity.rjust(3) + '.' + name.rjust(25) + price.rjust(5) + subtotal.rjust(5)
  end

end


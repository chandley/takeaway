class Customer  
attr_accessor :order

  def initialize(order = Order.new)
    @order = order
  end

  def choose_item
    puts "pick an item from menu"
    item_string = gets.chomp.downcase  
  end

end
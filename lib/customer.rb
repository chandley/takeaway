class Customer  
attr_accessor :order

  def initialize(order = Order.new)
    @order = order
  end


end
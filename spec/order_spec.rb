require 'order'

describe Order do
  let(:order) {Order.new}
  let(:dish) {double :dish, price: 10}
  let(:expensive_dish) {double :dish, price: 50}


  it 'starts empty' do
    expect(order.dishes.size).to eq(0)
  end

  it 'can add a dish' do
    order.choose(dish)
    expect(order.dishes.keys).to include(dish)
  end

  it 'can add several of the same dish' do
    3.times {order.choose(dish)}
    expect(order.dishes[dish]).to eq(3)
  end

  it 'can calculate a total price' do
    
    order.choose(dish)
    order.choose(expensive_dish)
    expect(order.total_price).to eq(60)
  end


end
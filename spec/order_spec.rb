require 'order'

describe Order do
  let(:order) {Order.new}
  let(:dish) {double :dish}

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

end
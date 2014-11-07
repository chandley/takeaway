require 'order'

describe Order do
  let(:order) {Order.new}
  let(:dish) {double :dish}

  it 'starts empty' do
    expect(order.dishes.size).to eq(0)
  end
end
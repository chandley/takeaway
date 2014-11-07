require 'customer'

describe Customer do
  let(:order) {double :order}
  let(:customer) {Customer.new(order)}

  it 'starts with an order' do
    expect(customer.order).not_to be_nil
  end
end
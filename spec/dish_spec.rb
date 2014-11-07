require 'dish'

describe Dish do
  let(:dish) {Dish.new}

    it 'has has a name' do
      expect(dish.name.is_a?(String)).to be(true)
    end

    it 'has a price for the first item' do
      expect(dish.price.is_a?(Fixnum)).to be(true)
    end
end
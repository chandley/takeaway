require 'menu'

describe   Menu do
  let(:menu) {Menu.new}
  context 'basic properties' do
  
    it 'has has at least one text dish name' do
      expect(menu.dishes.keys.first.is_a?(String)).to be(true)
    end
  end
end
require 'menu'

describe   Menu do
  let(:kipper) {double :dish, name: 'kipper'}
  let(:menu) {Menu.new([kipper])}
  context 'basic properties' do
  
    it 'has a dish' do
      expect(menu.dishes).to include(kipper)
    end

    it 'knows if a dish is on the menu' do

      expect(menu.dishes).to receive(:has_key?)
      menu.include_dish?('kipper')
    end

  end
end
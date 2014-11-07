require 'menu'

describe   Menu do
  let(:kipper) {double :dish}
  let(:menu) {Menu.new([kipper])}
  context 'basic properties' do
  
    it 'has a dish' do
      expect(menu.dishes).to include(kipper)
    end

  end
end
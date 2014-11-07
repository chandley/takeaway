class Menu
  attr_reader :dishes

  def initialize(dishes = [])
  @dishes =  dishes
  end

  def show
    puts 'Bill of Fayre'
      dishes.each do | name, price |
        puts "#{name}".ljust(25) + price.to_s.rjust(3)
      end
    end
end

menu = Menu.new
menu.show
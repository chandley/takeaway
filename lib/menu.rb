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

  def include_dish?(dish_name)
    @dishes.map {|dish| dish.name }.include? dish_name
  end
end

menu = Menu.new
menu.show

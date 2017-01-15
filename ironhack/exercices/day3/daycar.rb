class CarDealer
  def initialize(inventory={})
    @inventory = inventory
  end

  def cars(brand)
    @inventory[brand.capitalize.to_sym]
  end

  def add_car(brand, model)
    @inventory[brand.capitalize.to_sym] ||= []
    @inventory[brand.capitalize.to_sym].push(model)
  end

  def print_inventory
    @inventory.each do |k,v|
      print k.to_s + ": "
      puts v.join(", ")
    end
  end
end



concesionario = CarDealer.new({
  Ford: ["Fiesta", "Mustang"],
  Honda: ["Civic", "CR-V"]
  })
puts "Introduce una marca"
brand = gets.chomp
puts concesionario.cars(brand)
concesionario.add_car("ford", "Focus")
concesionario.add_car("PEUGEOT", "206")
concesionario.print_inventory
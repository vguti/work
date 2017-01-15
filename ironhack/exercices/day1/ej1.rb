class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
  Home.new("Paco's place", "San Juan", 3, 42),
  Home.new("Nacho's place", "Málaga", 3, 44),
  Home.new("Maria's place", "Pittsburgh", 3, 43),
  Home.new("Guillermo's place", "Málaga", 6, 55),
  Home.new("Antonio's place", "San Juan", 1, 29)
]

homes.each do |hm|                                              
  puts "#{hm.name} in #{hm.city} \nPrice: $#{hm.price} a night" 
 end     


precios = homes.map do |hm|                                     
   hm.price      

end 

suma=0
precios.each do |num|
	suma += num
puts suma
end

media = suma/precios.count


precios = homes.reduce(0.0) do |sum,hm|
	sum + hm.price
end
media = precios/homes.count
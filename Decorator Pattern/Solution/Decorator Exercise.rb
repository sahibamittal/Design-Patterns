
# Mel Ó Cinnéide
# with thanks to Freeman&co. for the example

require_relative 'decorator.rb'

class Decaf
  def description
    "decaffinated coffee"
  end
  def cost
    2.0
  end
end

class Expresso
  def description
    "expresso coffee"
  end
  def cost
    1.5
  end
end

class Milk
  def description
    "milk"
  end
  def cost
    0.50
  end
end

class Sugar
  def description
    "sugar"
  end
  def cost
    0.20
  end
end

# Decorator pattern with delegation
decaf = Decaf.new
puts decaf.description
decafWithMilk = AddMilk.new(decaf)
puts decafWithMilk.description
decafWithMilkAndSugar = AddSugar.new(decafWithMilk)
puts decafWithMilkAndSugar.description

puts "\nMy coffee is: #{decafWithMilkAndSugar.description}. Cost : #{decafWithMilkAndSugar.cost}"

second_coffee = AddMilk.new(Expresso.new)
puts "My second coffee is: #{second_coffee.description}. Cost : #{second_coffee.cost}"

# Part 3
# Playing Randomly using method 'rand'

coffee_array = [Decaf,Expresso]
random_coffee = coffee_array[rand(2)].new
condiment_array = [AddSugar.new(random_coffee),AddMilk.new(random_coffee)]
condiment_r = rand(2)
random_coffee = condiment_array[condiment_r]
puts "My random-made coffee is: #{random_coffee.description}. Cost : #{random_coffee.cost}"

# delegation
decaf = Decaf.new
dec = CoffeeDecorator.new(decaf)
puts dec.display

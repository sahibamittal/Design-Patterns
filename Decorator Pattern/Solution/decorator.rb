class CoffeeDecorator< SimpleDelegator
  def initialize(coffee)
    @coffee = coffee
  end
  def display
    puts "#{@coffee.description}"
  end
end

class AddSugar < CoffeeDecorator
  def initialize(coffee)
    @coffee = coffee
    @sugar = Sugar.new
  end

  def description
    "#{@coffee.description} with #{@sugar.description}"
  end

  def cost
    @coffee.cost + @sugar.cost
  end

end

class AddMilk < CoffeeDecorator
  def initialize(coffee)
    @coffee = coffee
    @milk = Milk.new
  end

  def description
    "#{@coffee.description} with #{@milk.description}"
  end

  def cost
    @coffee.cost + @milk.cost
  end
end

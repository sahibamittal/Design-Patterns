class Component
  attr_accessor :components

  def initialize
    @components = []
  end
  def add(component)
    @components << component
  end
  def getComponents
    @components
  end
end

class Brick < Component
  def name
    @name = 'Brick'
  end
  def cost
    @cost = 10.00
  end
end

class Door < Component
  def name
    @name = 'Door'
  end
  def cost
    @cost = 12.50
  end
end

class Window < Component
  def name
    @name = 'Window'
  end
  def cost
    @cost = 17.50
  end
end
class Brick < Component
  def name
    raise(NotImplementedError)
  end
  def cost
    raise(NotImplementedError)
  end
end

class RedBrick < Component
  def name
    @name = 'Red Brick'
  end
  def cost
    @cost = 11.00
  end
end

class MarbleBrick < Component
  def name
    @name = 'Marble Brick'
  end
  def cost
    @cost = 15.50
  end
end
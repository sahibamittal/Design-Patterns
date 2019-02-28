class Brick < Component
  def name
    raise(NotImplementedError)
  end
  def cost
    raise(NotImplementedError)
  end
end

class RedBrick < Brick
  def name
    @name = 'Red Brick'
  end
  def cost
    @cost = 11.00
  end
end

class MarbleBrick < Brick
  def name
    @name = 'Marble Brick'
  end
  def cost
    @cost = 15.50
  end
end
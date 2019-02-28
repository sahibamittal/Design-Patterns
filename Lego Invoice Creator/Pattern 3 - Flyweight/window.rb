class Window < Component
  def name
    raise(NotImplementedError)
  end
  def cost
    raise(NotImplementedError)
  end
end

class MetalGrillWindow < Window
  def name
    @name = 'Metal Grill Window'
  end
  def cost
    @cost = 20.00
  end
end

class FrenchWindow < Window
  def name
    @name = 'French Window'
  end
  def cost
    @cost = 17.50
  end
end
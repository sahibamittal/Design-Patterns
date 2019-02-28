class Door < Component
  def name
    raise(NotImplementedError)
  end
  def cost
    raise(NotImplementedError)
  end
end

class WoodenDoor < Door
  def name
    @name = 'Wooden Door'
  end
  def cost
    @cost = 14.50
  end
end

class GlassDoor < Door
  def name
    @name = 'Glass Door'
  end
  def cost
    @cost = 12.50
  end
end
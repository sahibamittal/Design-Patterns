
class Factory

  @@factory_instance = Factory.new

  def self.instance
    @@factory_instance
  end

  def coolFactory
    obj = CoolFactory.new
    obj
  end

  def unCoolFactory
    obj = UncoolFactory.new
    obj
  end

  def deadlyFactory
    obj = DeadlyFactory.new
    obj
  end

end

class CoolFactory < Factory

  def create_product_A
    obj = CoolProductA.new
    obj
  end
  def create_product_B
    obj = CoolProductB.new
    obj
  end
  def create_product_C
    obj = CoolProductC.new
    obj
  end
  def create_product_D
    obj = CoolProductD.new
    obj
  end
end

class UncoolFactory < Factory

  def create_product_A
    obj = UncoolProductA.new
    obj
  end
  def create_product_B
    obj = UncoolProductB.new
    obj
  end
  def create_product_C
    obj = UncoolProductC.new
    obj
  end
  def create_product_D
    obj = UncoolProductD.new
    obj
  end
end

class DeadlyFactory < Factory

  def create_product_A
    obj = DeadlyProductA.new
    obj
  end
  def create_product_B
    obj = DeadlyProductB.new
    obj
  end
  def create_product_C
    obj = DeadlyProductC.new
    obj
  end
  def create_product_D
    obj = DeadlyProductD.new
    obj
  end
end
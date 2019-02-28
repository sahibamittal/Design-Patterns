require_relative 'brick.rb'
require_relative 'door.rb'
require_relative 'window.rb'

class ConstructionFactory
  @@factory_instance = ConstructionFactory.new

  def self.instance
    @@factory_instance
  end

  def houseFactory
    obj = HouseFactory.new
    obj
  end

  def buildingFactory
    obj = BuildingFactory.new
    obj
  end
end

class HouseFactory < ConstructionFactory

  def getComponents
    house = Component.new
    house.add(RedBrick.new)
    house.add(WoodenDoor.new)
    house.add(FrenchWindow.new)
    house.getComponents
  end
end

class BuildingFactory < ConstructionFactory
  def getComponents
    building = Component.new
    building.add(MarbleBrick.new)
    building.add(GlassDoor.new)
    building.add(MetalGrillWindow.new)
    building.getComponents
  end
end
require_relative 'brick.rb'
require_relative 'door.rb'
require_relative 'window.rb'

class ConstructionFactory
  @@factory_instance = ConstructionFactory.new
  $flyweight = Hash.new

  def self.instance
    @@factory_instance
  end

  def houseFactory
    puts "\n---Objects already available ready to be re-used : #{$flyweight.to_s}---"
    # specification to check if the object being created is already available
    if Spec::FirstObject.new.is_satisfied_by?($flyweight, "HouseFactory")
      then $flyweight[HouseFactory] = HouseFactory.new
    end
    $flyweight[HouseFactory]
  end

  def buildingFactory
    puts "\n---Objects already available ready to be re-used : #{$flyweight.to_s}---"
    if Spec::FirstObject.new.is_satisfied_by?($flyweight, "BuildingFactory")
    then $flyweight[BuildingFactory] = BuildingFactory.new
    end
    $flyweight[BuildingFactory]
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
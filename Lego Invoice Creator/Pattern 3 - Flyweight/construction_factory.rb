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
    if $flyweight[HouseFactory] == nil
      then $flyweight[HouseFactory] = HouseFactory.new
      puts "----HouseFactory being instantiated first time---"
    else
      puts "----HouseFactory object being re-used---"
    end
    $flyweight[HouseFactory]
  end

  def buildingFactory
    puts "\n Objects already available ready to be re-used : #{$flyweight.to_s}"
    if $flyweight[BuildingFactory] == nil
    then $flyweight[BuildingFactory] = BuildingFactory.new
    puts "---BuildingFactory being instantiated first time---"
    else
      puts "----BuildingFactory object being re-used---"
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
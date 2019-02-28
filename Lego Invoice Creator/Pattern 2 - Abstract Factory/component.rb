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







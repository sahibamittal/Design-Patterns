require_relative 'component.rb'

# composite
class Invoice
  def initialize(components = [])
    @components = components
  end

  def to_s
    text = ''
    total_cost = 0.0
    @components.each do |component|
      total_cost += component.cost
      text += "#{component.name}: #{component.cost}\n"
    end
    text += "TOTAL: #{total_cost}"
  end 
end

class InvoiceCreator
  attr_reader :invoice
  
  def initialize(building)
    @invoice = Invoice.new(building.getComponents)
  end
end

building = Component.new
building.add(Brick.new)
building.add(Door.new)
building.add(Window.new)
my_invoice_creator = InvoiceCreator.new(building)
puts my_invoice_creator.invoice.to_s


require_relative 'component.rb'
require_relative 'construction_factory.rb'

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

# composite
class InvoiceCreator
  attr_reader :invoice
  
  def initialize(list)
    @invoice = Invoice.new(list)
  end
end

factory = ConstructionFactory.new
house_obj= factory.houseFactory
list = house_obj.getComponents

building_obj = factory.buildingFactory
list2 = building_obj.getComponents

my_invoice_creator = InvoiceCreator.new(list)
puts "\nInvoice for constructing a house : \n#{my_invoice_creator.invoice.to_s}"

my_invoice_creator = InvoiceCreator.new(list2)
puts "\nInvoice for constructing a building : \n#{my_invoice_creator.invoice.to_s}"


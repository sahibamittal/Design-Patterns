require 'rspec'
require_relative 'InvoiceCreator.rb'
require_relative 'component.rb'
require_relative 'construction_factory.rb'
require_relative 'specification.rb'

describe 'invoice behaviour' do

  before do
    @factory = ConstructionFactory.new
  end

  it 'verifies house factory' do
    house_obj= @factory.houseFactory
    list = house_obj.getComponents
    my_invoice_creator = InvoiceCreator.new(list)
    expect(my_invoice_creator.invoice.to_s).to eq("Red Brick: 11.0\nWooden Door: 14.5\nFrench Window: 17.5\nTOTAL: 43.0\nNON-TAXABLE")
  end

  it 'verifies building factory' do
    house_obj= @factory.buildingFactory
    list = house_obj.getComponents
    my_invoice_creator = InvoiceCreator.new(list)
    expect(my_invoice_creator.invoice.to_s).to eq("Marble Brick: 15.5\nGlass Door: 12.5\nMetal Grill Window: 20.0\nTOTAL: 48.0\nTAXABLE")
  end
end

#
# ABSTRACT FACTORY EXERCISE
#

require_relative 'factory.rb'
require_relative 'product_a.rb'
require_relative 'product_b.rb'
require_relative 'product_c.rb'
require_relative 'product_d.rb'

class Client
  def initialize
    @factory = Factory.instance
  end

  def foo
    cool = @factory.coolFactory
    uncool = @factory.unCoolFactory
    deadly = @factory.deadlyFactory
    cool.create_product_A.do_your_stuff
    cool.create_product_B.do_it
    uncool.create_product_C.perform
    deadly.create_product_B.do_it
    cool.create_product_D.perform
    deadly.create_product_D.perform
  end
end

my_client = Client.new
my_client.foo
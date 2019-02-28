#
# ABSTRACT FACTORY EXERCISE
# 

class Client 
  def initialize
		@prod_A = ProductA.new
	end
	
  def foo
		@prod_A.do_your_stuff
		my_prod_B = ProductB.new
		my_prod_B.do_it
		@prod_C = ProductC.new
		@prod_C.perform
	end
end

class ProductA
	def do_your_stuff
		puts "I'm a ProductA, doing my stuff"
	end
end

class ProductB
	def do_it
		puts "I'm a ProductB, doing it"
	end
end

class ProductC
	def perform
		puts "I'm a ProductC, performing"
	end
end

my_client = Client.new
my_client.foo

# Mel Ó Cinnéide
# with thanks to Vince Huston for the example

require_relative 'state.rb'
require_relative 'transition.rb'

class Person 
	def initialize
		@age = 0
		#@context= context
	end

	def incr_age
		@age+=1
	end

	def apply_for_medical_card
		state = Transition.getState(@age)
		return state.apply_for_medical_card
	end
	 
	def vote
		state = Transition.getState(@age)
		return state.vote
	end

	def apply_for_buspass
		state = Transition.getState(@age)
		return state.apply_for_buspass
	end
					
	def conscript
		state = Transition.getState(@age)
		return state.conscript
	end
end

p = Person.new

for i in 1..80
	puts p.incr_age
	puts p.apply_for_buspass
	puts p.vote
	puts p.conscript
  puts p.apply_for_medical_card
end
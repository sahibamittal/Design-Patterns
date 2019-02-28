
# Mel Ó Cinnéide
# with thanks to Vince Huston for the example

class Person 
	def initialize  
		@age = 0
		@state = :child
	end

	def incr_age
		@age+=1;
		if (@age==18)
			@state = :adult
		end
		if (@age==65)
			@state = :pensioner
		end
	end
	 
	def vote()
		if @state==:child
			puts "Too young to vote"
		else
			puts "Vote accepted"
		end
	end

	def apply_for_buspass
		if (@state==:pensioner)
			puts "Pass granted"
		else
			puts "Too young for a bus pass"
		end
	end
					
	def conscript
		case @state
		  when :pensioner: puts "Too old to be conscripted"
		  when :child: puts "Too young to be conscripted"
		  when :adult: puts "Here's your gun"
	  end
  end
end

p = Person.new
for i in 1..80
  p.incr_age();
	p.apply_for_buspass();
	p.vote();
	p.conscript();
end
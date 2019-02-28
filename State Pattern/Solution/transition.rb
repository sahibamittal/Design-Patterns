require_relative 'state.rb'

class Transition

  def self.getState(age)
    if(age>12 && age<20)
      return Teenager.get_instance
    elsif (age>19 && age<65)
      return Adult.get_instance
    elsif (age>=65)
      return Pensioner.get_instance
    else
      return Child.get_instance
    end
  end
end
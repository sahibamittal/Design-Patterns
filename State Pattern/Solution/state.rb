require_relative 'context.rb'
require 'singleton'

class State
  include Singleton
  def conscript
    raise(NotImplementedError)
  end
  def apply_for_buspass
    raise(NotImplementedError)
  end
  def vote
    raise(NotImplementedError)
  end
  def apply_for_medical_card
    raise(NotImplementedError)
  end
end

class Child < State
  include Singleton
  @@child_state= Child.new

  def conscript
    return "Too young to be conscripted"
  end
  def apply_for_buspass
    return "Too young for a bus pass"
  end
  def vote
    return "Too young to vote"
  end
  def apply_for_medical_card
    return "Qualified for Medical Card"
  end
  def self.get_instance
    @@child_state
  end
end

class Adult < State
  include Singleton
  @@adult_state = Adult.new
  def conscript
    return "Here's your gun"
  end
  def apply_for_buspass
    return "Too young for a bus pass"
  end
  def vote
    return "Vote accepted"
  end
  def apply_for_medical_card
    return "Not Qualified for Medical Card"
  end
  def self.get_instance
    @@adult_state
  end
end

class Pensioner < State
  include Singleton
  @@pensioner_state = Pensioner.new

  def conscript
    return "Too old to be conscripted"
  end
  def apply_for_buspass
    return "Pass granted"
  end
  def vote()
    return "Vote accepted"
  end
  def apply_for_medical_card
    return "Qualified for Medical Card"
  end
  def self.get_instance
    @@pensioner_state
  end
end

class Teenager < State
  include Singleton
  @@teenager_state = Teenager.new

  def conscript
    return "Here's your gun"
  end
  def apply_for_buspass
    return "Pass granted"
  end
  def apply_for_medical_card
    return "Qualified for Medical Card"
  end
  def vote
    return "Too young to vote"
  end
  def self.get_instance
    @@teenager_state
  end
end


require_relative 'oracle.rb'
require 'observer'

# Tries to guess the 'secret' number using several different strategies
class Participant
  include Observable
  attr_reader :num_attempts
  attr_writer :strategy

  def initialize(oracle, strategy, max_num_attempts:10)
    @oracle, @max_num_attempts = oracle, max_num_attempts
    @num_attempts = 0
    @strategy = strategy
  end
  
  def reset
    @num_attempts = 0
  end

  def play(lower,upper)
    @num_attempts = @strategy.start_play(lower,upper, @oracle, @num_attempts, @max_num_attempts)
    changed
    notify_observers(@num_attempts)
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      success
    else
      fail
    end
  end

  private

  def success
    # puts "Boo hoo. I made #{@num_attempts} attempts and failed."
    :success
  end
  def fail
    # puts "Boo hoo. I made #{@num_attempts} attempts and failed."
    :fail
  end

end
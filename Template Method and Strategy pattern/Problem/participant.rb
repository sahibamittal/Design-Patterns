
require_relative 'oracle.rb'

# Tries to guess the 'secret' number using several different strategies
class Participant
  attr_reader :num_attempts 

  def initialize(oracle, max_num_attempts:10)
    @oracle, @max_num_attempts = oracle, max_num_attempts
    @num_attempts = 0
  end
  
  def reset
    @num_attempts = 0
  end

  def play_randomly(lower,upper)
    while (@num_attempts <= @max_num_attempts) do
      num = Kernel.rand(lower..upper) # new number to guess
      @num_attempts+=1
      break if @oracle.is_this_the_number?(num)==:correct
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      :success
    else
      fail
    end
  end

  def play_linear(lower)
    num=lower-1
    while (@num_attempts <= @max_num_attempts) do
      num+=1 # new number to guess
      @num_attempts+=1
      break if @oracle.is_this_the_number?(num)==:correct
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      :success
    else
      fail
    end
  end

  def play_smart_random(lower, upper)
    while (@num_attempts <= @max_num_attempts) do
      num = Kernel.rand(lower..upper) # new number to guess
      @num_attempts+=1
      result = @oracle.is_this_the_number?(num)
      break if result==:correct
      if result == :less_than
        upper = num-1
      elsif result == :greater_than
        lower = num+1
      end
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      :success
    else
      fail
    end
  end

  def play_binary_search(lower, upper)
    while (@num_attempts <= @max_num_attempts) do
      num = (lower+upper)/2 # new number to guess
      @num_attempts+=1
      result = @oracle.is_this_the_number?(num)
      break if result==:correct
      if result == :less_than
        upper = num-1
      elsif result == :greater_than
        lower = num+1
      end
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      :success
    else
      fail
    end
  end

  private
  def fail
    # puts "Boo hoo. I made #{@num_attempts} attempts and failed."
    :fail
  end

end
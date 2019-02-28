class Play_randomly

  def start_play(lower,upper, oracle, num_attempts, max_num_attempts)
    while (num_attempts <= max_num_attempts) do
      num = Kernel.rand(lower..upper) # new number to guess
      num_attempts+=1
      break if oracle.is_this_the_number?(num)==:correct
    end
    num_attempts
  end

end
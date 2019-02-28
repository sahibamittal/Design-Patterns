class Play_linear

  def start_play(lower, upper,  oracle, num_attempts, max_num_attempts)
    num=lower-1
    while (num_attempts <= max_num_attempts) do
      num+=1 # new number to guess
      num_attempts+=1
      break if oracle.is_this_the_number?(num)==:correct
    end
    num_attempts
  end
end
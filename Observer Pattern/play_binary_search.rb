class Play_binary_search

  def start_play(lower,upper, oracle, num_attempts, max_num_attempts)
    while (num_attempts <= max_num_attempts) do
      num = (lower+upper)/2 # new number to guess
      num_attempts+=1
      result = oracle.is_this_the_number?(num)
      break if result==:correct
      if result == :less_than
        upper = num-1
      elsif result == :greater_than
        lower = num+1
      end
    end
    num_attempts
  end

end
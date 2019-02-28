
# Evaluate the performance of participants using different guessing strategies

require_relative 'oracle.rb'
require_relative 'participant.rb'
require_relative 'play_randomly.rb'
require_relative 'play_linear.rb'
require_relative 'play_smart_random.rb'
require_relative 'play_binary_search.rb'
require_relative 'auditor.rb'

NUM_OF_RUNS = 8

oracle = Oracle.new
aud = Auditor.new

# evaluate random strategy
total_num_attempts = 0
total_num_failures = 0
strategy_type = Play_randomly.new
homer = Participant.new(oracle,strategy_type,max_num_attempts: NUM_OF_RUNS*2)
homer.add_observer(aud)
1.upto(NUM_OF_RUNS) do |i|
  oracle.secret_number = i
  homer.reset
  if homer.play(1,NUM_OF_RUNS)==:success
    # puts "play randomly found #{i} in #{homer.num_attempts} attempts"
    total_num_attempts += homer.num_attempts
  else
    # puts "play randomly failed to find #{i} after #{homer.num_attempts} attempts"
    total_num_failures += 1
  end
end
puts "play randomly took on average #{total_num_attempts/(NUM_OF_RUNS-total_num_failures)} attempts to succeed"

# evaluate linear strategy
total_num_attempts = 0
total_num_failures = 0
strategy_type = Play_linear.new
bart = Participant.new(oracle,strategy_type,max_num_attempts:NUM_OF_RUNS*2)
bart.add_observer(aud)
1.upto(NUM_OF_RUNS) do |i|
  oracle.secret_number = i
  bart.reset
  if bart.play(1,0)==:success
    # puts "play_linear found #{i} in #{bart.num_attempts} attempts"
    total_num_attempts += bart.num_attempts
  else
    # puts "play_linear failed to find #{i} after #{bart.num_attempts} attempts"
    total_num_failures += 1
  end
end
puts "play_linear took on average #{total_num_attempts/(NUM_OF_RUNS-total_num_failures)} attempts to succeed"

# evaluate 'smart random' strategy
total_num_attempts = 0
total_num_failures = 0
strategy_type = Play_smart_random.new
maggie = Participant.new(oracle,strategy_type, max_num_attempts:NUM_OF_RUNS*5)
maggie.add_observer(aud)
1.upto(NUM_OF_RUNS) do |i|
  oracle.secret_number = i
  maggie.reset
  if maggie.play(1,NUM_OF_RUNS)==:success
    # puts "play_smart_random found #{i} in #{maggie.num_attempts} attempts"
    total_num_attempts += maggie.num_attempts
  else
    # puts "play_smart_random failed to find #{i} after #{maggie.num_attempts} attempts"
    total_num_failures += 1
  end
end
puts "play_smart_random took on average #{total_num_attempts/(NUM_OF_RUNS-total_num_failures)} attempts to succeed"

# evaluate binary search strategy
total_num_attempts = 0
total_num_failures = 0
strategy_type = Play_binary_search.new
lisa = Participant.new(oracle,strategy_type, max_num_attempts:NUM_OF_RUNS*5)
lisa.add_observer(aud)
1.upto(NUM_OF_RUNS) do |i|
  oracle.secret_number = i
  lisa.reset
  if lisa.play(1,NUM_OF_RUNS)==:success
    # puts "play_binary_search found #{i} in #{lisa.num_attempts} attempts"
    total_num_attempts += lisa.num_attempts
  else
    # puts "play_binary_search failed to find #{i} after #{lisa.num_attempts} attempts"
    total_num_failures += 1
  end
end
puts "play_binary_search took on average #{total_num_attempts/(NUM_OF_RUNS-total_num_failures)} attempts to succeed"

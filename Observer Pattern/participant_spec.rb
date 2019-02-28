require 'rspec'
require_relative 'participant'
require_relative 'oracle'
require_relative 'play_randomly.rb'
require_relative 'play_linear.rb'
require_relative 'play_smart_random.rb'
require_relative 'play_binary_search.rb'

rand_values = [10, 7, 4, 9, 6, 5, 2, 8, 1, 3, 0] # for rand

describe 'participant behaviour' do

  before do
    @oracle = Oracle.new(secret_num:4)
    allow(Kernel).to receive(:rand).and_return(*rand_values) # mocking Kernel.rand
  end

  it 'guesses the number 4 in 3 attempts using play_randomly' do
    @strategy = Play_randomly.new
    @participant = Participant.new(@oracle, @strategy, max_num_attempts:5)
    expect(@participant.play(0, 10)).to eq(:success)
    expect(@participant.num_attempts).to eq(3)
  end

  it 'guesses the number 4 in 5 attempts using play_linear' do
    @strategy = Play_linear.new
    @participant = Participant.new(@oracle, @strategy, max_num_attempts:5)
    expect(@participant.play(0,0)).to eq(:success)
    expect(@participant.num_attempts).to eq(5)
  end

  it 'guesses the number 4 in 3 attempts using play_smart_random' do
    @strategy = Play_smart_random.new
    @participant = Participant.new(@oracle, @strategy, max_num_attempts:5)
    expect(@participant.play(0, 10)).to eq(:success)
    expect(@participant.num_attempts).to eq(3)
  end

  it 'guesses the number 4 in 4 attempts using play_binary_search' do
    @strategy = Play_binary_search.new
    @participant = Participant.new(@oracle, @strategy, max_num_attempts:5)
    expect(@participant.play(0, 10)).to eq(:success)
    expect(@participant.num_attempts).to eq(4)
  end
  
end

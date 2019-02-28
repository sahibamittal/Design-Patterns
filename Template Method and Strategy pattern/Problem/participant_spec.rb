require 'rspec'
require_relative 'participant'
require_relative 'oracle'

rand_values = [10, 7, 4, 9, 6, 5, 2, 8, 1, 3, 0] # for rand

describe 'participant behaviour' do

  before do
    @oracle = Oracle.new(secret_num:4)
    @participant = Participant.new(@oracle, max_num_attempts:5)
    allow(Kernel).to receive(:rand).and_return(*rand_values) # mocking Kernel.rand
  end

  it 'guesses the number 4 in 3 attempts using play_randomly' do
    expect(@participant.play_randomly(0, 10)).to eq(:success)
    expect(@participant.num_attempts).to eq(3)
  end

  it 'guesses the number 4 in 5 attempts using play_linear' do
    expect(@participant.play_linear(0)).to eq(:success)
    expect(@participant.num_attempts).to eq(5)
  end

  it 'guesses the number 4 in 3 attempts using play_smart_random' do
    expect(@participant.play_smart_random(0, 10)).to eq(:success)
    expect(@participant.num_attempts).to eq(3)
  end

  it 'guesses the number 4 in 4 attempts using play_binary_search' do
    expect(@participant.play_binary_search(0, 10)).to eq(:success)
    expect(@participant.num_attempts).to eq(4)
  end
  
end

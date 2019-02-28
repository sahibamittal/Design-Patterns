
# Knows the number the participants are trying to guess

class Oracle
  attr_writer :secret_number

  def initialize(secret_num:0)
    @secret_number = secret_num
  end

  def is_this_the_number? num
    if num == @secret_number
      :correct
    elsif num > @secret_number
      :less_than
    elsif num < @secret_number
      :greater_than
    end
  end

end
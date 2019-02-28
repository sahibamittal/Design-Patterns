class ProductD
  def perform
    raise(NotImplementedError)
  end
end

class CoolProductD < ProductD
  def perform
    puts "I'm a ProductD and I'm coool, performing"
  end
end

class UncoolProductD < ProductD
  def perform
    puts "I'm a ProductD not so cool, performing"
  end
end

class DeadlyProductD < ProductD
  def perform
    puts "I'm a deadly ProductD, performing"
  end
end


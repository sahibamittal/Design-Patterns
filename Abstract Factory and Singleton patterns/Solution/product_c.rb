class ProductC
  def perform
    raise(NotImplementedError)
  end
end

class CoolProductC < ProductC
  def perform
    puts "I'm a ProductC and I'm coool, performing"
  end
end

class UncoolProductC < ProductC
  def perform
    puts "I'm a ProductC not so cool, performing"
  end
end

class DeadlyProductC < ProductC
  def perform
    puts "I'm a deadly ProductC, performing"
  end
end


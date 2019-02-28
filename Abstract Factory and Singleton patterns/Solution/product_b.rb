class ProductB
  def do_it
    raise(NotImplementedError)
  end
end

class CoolProductB < ProductB
  def do_it
    puts "I'm a ProductB and I'm coool, doing it"
  end
end

class UncoolProductB < ProductB
  def do_it
    puts "I'm a ProductB not so cool, doing it"
  end
end

class DeadlyProductB < ProductB
  def do_it
    puts "I'm a deadly ProductB, doing it"
  end
end
class ProductA
  def do_your_stuff
    raise(NotImplementedError)
  end
end

class CoolProductA < ProductA
  def do_your_stuff
    puts "I'm a ProductA and I'm coool, doing my stuff"
  end
end

class UncoolProductA < ProductA
  def do_your_stuff
    puts "I'm a ProductA not so cool, doing my stuff"
  end
end

class DeadlyProductA < ProductA
  def do_your_stuff
    puts "I'm a deadly ProductA, doing my stuff"
  end
end
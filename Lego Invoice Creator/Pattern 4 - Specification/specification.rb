# Specification pattern to apply business rules together using boolean logic without conditional operators.

module Spec

  # business rule 1 : construction with total cost over 45.00 is taxable
  class Taxable
    def is_satisfied_by?(cost)
      cost > 45.00
    end
  end

  # business rule 2 : objects already created should be re-used ---- using Flyweight Pattern
  class FirstObject
    def is_satisfied_by?(hash_list, classname)
      $flyweight[classname] == nil
    end
  end
end
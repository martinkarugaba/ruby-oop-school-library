# Represents a student, inheriting from the Person class.
class Nameable
  def correct_name
    raise NotImplementedError, 'Subclasses must implement the correct_name method.'
  end
end

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id, age, name = 'Unknown', parent_permission: true)
    super()
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def of_age?
    @age >= 18
  end

  def correct_name
    @name
  end

  def with_decorator(decorator)
    decorator.decorate(self)
  end
end

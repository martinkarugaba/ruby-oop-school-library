# Represents a teacher, inheriting from the Person class.
class Teacher < Person
  def initialize(id, age, specialization, name = 'Unknown', parent_permission: true)
    super(id, age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

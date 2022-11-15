require './person'

class Teacher < Person
  def initialize(age, classroom, name, parent_permission)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age)
    super(age)
    @classroom = classroom
    classroom.students << self
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end

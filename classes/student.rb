require_relative 'person'

class Student < Person
  def initialize(age, classroom, name: 'unknown', parent_permession: true)
    super(age, name, parent_permession)
    @classroom = classroom
    @classroom.add_student(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end

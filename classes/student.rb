require_relative 'person'

class Student < Person
  def initialize(age, name, parent_permession, classroom)
    super(age, name, parent_permession)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end

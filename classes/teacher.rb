require_relative 'person'

class Teacher < Person
  def initialize(age, specialization, name: 'unkown', parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

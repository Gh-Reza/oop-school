class Person
  attr_accessor :id, :name, :age

  def initialize(age, name = 'unkown', parent_permession: true)
    @id = rand
    @name = name
    @parent_permession = parent_permession
    @age = age
  end

  def to_s
    "#{@age} is the age of #{@name} with the id of #{@id}"
  end

  def can_use_services?
    @age >= 18 || @parent_permession
  end

  private

  def of_age?
    @age >= 18
  end
end

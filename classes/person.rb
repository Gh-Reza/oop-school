require_relative('nameable')

class Person < Nameable
  attr_accessor :name, :age, :parent_permession
  attr_reader :id

  def initialize(age, name: 'unkown', parent_permession: true)
    @id = rand(1..1_000_000)
    @name = name
    @parent_permession = parent_permession
    @age = age
  end

  private

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permession
  end

  def correct_name
    @name
  end
end

reza = Person.new(13)
reza.name = 'Reza'
reza.parent_permession = true
puts reza

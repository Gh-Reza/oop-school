require_relative('nameable')

class Person < Nameable
  attr_accessor :name, :age, :parent_permession, :rentals
  attr_reader :id

  def initialize(age, name: 'unkown', parent_permession: true)
    super()
    @id = rand(1..1_000_000)
    @name = name
    @parent_permession = parent_permession
    @age = age
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
    rental.person = self
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permession
  end
end

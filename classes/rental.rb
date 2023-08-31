class Rental
  attr_accessor :data, :book, :person

  def initialize(data, book, person)
    @data = data
    @book = book
    @person = person
    book.add_rental(self)
    person.add_rental(self)
  end
end

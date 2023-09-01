class App
  def initialize
    @books = []
    @people = []
  end

  def list_books
    @books.each {|book| puts "Title: #{book.title} | Author: #{book.author}"}
  end

  def list_people
    @people.each {|person| puts "[#{person.class}] Name: #{person.name}, ID: {person.id}, Age: #{person.age}"}
  end
end
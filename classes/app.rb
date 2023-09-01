class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    @books.each {|book| puts "Title: #{book.title} | Author: #{book.author}"}
  end

  def list_people
    @people.each {|person| puts "[#{person.class}] Name: #{person.name}, ID: {person.id}, Age: #{person.age}"}
  end

  def create_student
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.downcase == 'y'
    print 'Classroom: '
    classroom = gets.chomp
    Student.new(age, classroom, name, parent_permission)
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    Teacher.new(age, specialization, name)
  end

  def add_person(person)
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_type = gets.chomp.to_i

    if person_type == 1
      @people << create_student
      puts 'Student created successfully'
    elsif person_type == 2
      @people << create_teacher
      puts 'Teacher created successfully'
    else
      puts 'Invalid option'
    end
  end

  def add_book(book)
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    Book.new(title, author)
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    list_books
    book_index = gets.chomp.to_i
    puts 'Select a person from the following list by number (not id)'
    list_people
    person_index = gets.chomp.to_i
    puts 'Date: '
    date = gets.chomp
    @rentals << Rental.new(date, @books[book_index], @people[person_index])
    puts 'Rental created successfully'
  end

  def list_rentals
    @rentals.each_with_index do |rental, index|
      puts "Date: #{rental.date} Book: #{rental.book.title} by #{rental.book.author} - Person: #{rental.person.name}"
    end
  end

end
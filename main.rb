require_relative('classes/app')

class Main
  def initialize
    @app = App.new
  end

  def display_options
    puts 'Please choose an option by entering a number: '
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def handle_options(option)
    case option
    when 1
      @app.list_books
    when 2
      @app.list_people
    when 3
      @app.create_person
    when 4
      @app.create_book
    when 5
      @app.create_rental
    when 6
      @app.list_rentals
    else
      puts 'Invalid option'
    end
  end

  def run
    display_options

    while (option = gets.chomp.to_i) != 7
      handle_options(option)
      puts ''
      display_options
    end
    puts 'Good bye!'
  end
end

main = Main.new
main.run

require './student'
require './rental'
require './book'
require './classroom'

class App
  def recieve(message)
    print message
    gets.chomp
  end

  def run
    print "Welcome to School Library App!\n\n"
    loop do
      puts "1- List all books
2- List all people
3- Create a new person
4- Create a new book entry
5- Create a new rental entry
6- List all rentals for a given person id
7- Quit"

      input = recieve('Choose an option: ').to_i

      break if input == 7

      execute(input)
    end
  end

  def execute(option)
    case option
    when 1
      puts 'list_book'
    when 2
      puts 'list_peaple'
    when 3
      puts 'create_person'
    when 4
      puts 'create_book'
    when 5
      puts 'create_rental'
    when 6
      puts 'list_rentals'
    else
      puts 'Not a valid option 🤷🏽‍♀️'
    end
  end
end

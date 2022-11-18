require './student'
require './rental'
require './book'
require './classroom'
require './teacher'

class App
  def initialize
    @people = []
    @classroom = Classroom.new('Class A')
    @books = []
  end

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
      list_books
    when 2
      list_people
    when 3
      create_person
    when 4
      create_book
    when 5
      puts 'create_rental'
    when 6
      puts 'list_rentals'
    else
      puts 'Not a valid option 🤷🏽‍♀️'
    end
  end

  def create_person
    choice = recieve('Do you want to create a student (1) or teacher (2)? [Input the number]: ').to_i
    age = recieve('Age: ').to_i
    name = recieve('Name: ')

    case choice
    when 1
      create_student(age, name)
    when 2
      specialization = recieve('Specialization: ')
      @people.push(Teacher.new(specialization, name, age))
    else
      puts 'Not a valid option 🤷🏽‍♀️'
    end
    puts 'Person created successfully!'
  end

  def create_student(age, name)
    permit = recieve('has parent permission? [Y, N]: ').downcase
    parent_permission = true if permit == 'y'
    parent_permission = false if permit == 'n'

    @people.push(Student.new(@classroom, age, name, parent_permission: parent_permission))
  end

  def create_book
    title = recieve('Title: ')
    author = recieve('Author: ')
    @books << Book.new(title, author)
    puts 'Book created successfully!'
  end

  def list_books(short: true)
    if short
      @books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
    else
      @books.each_with_index { |book, index| puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}" }
    end
  end

  def list_people(short: true)
    if short
      @people.each { |person| puts "[#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    else
      @people.each_with_index do |person, index|
        puts "#{index}) [#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end
end

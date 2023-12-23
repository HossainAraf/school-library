# Import necessary classes
require_relative 'book'
require_relative 'classroom'
require_relative 'person'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'

# Define the main application class
class App
  # Create getters and setters for books, people, and rentals
  attr_accessor :books, :people, :rentals

  # Initialize the App class with empty arrays for books, people, and rentals
  def initialize
    @books = []
    @rentals = []
    @people = []
  end

  # List all books in the books array
  def list_books
    @books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
  end

  # List all books with their indices
  def list_books_with_index
    @books.each_with_index { |book, i| puts "#{i}) Title: \"#{book.title}\", Author: #{book.author}" }
  end

  # List all people in the people array
  def list_people
    @people.each do |person|
      puts "[#{person.class.name}] Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
    end
  end

  # List all people with their indices
  def list_people_with_index
    @people.each_with_index do |person, i|
      puts "#{i}) [#{person.class.name}] Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
    end
  end

  # Create a person (either a student or a teacher) based on user input
  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [input the number]: '
    student_or_teacher = gets.chomp.to_i
    case student_or_teacher
    when 1
      create_student
    when 2
      create_teacher
    else
      puts "Invalid choice. Please enter a valid option. (#{student_or_teacher})"
    end
  end

  # Create a student based on user input
  def create_student
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp.to_s

    print 'Has parent permission? [Y / N]: '
    parent_permission = gets.chomp.to_s

    if parent_permission =~ /^[Yy]/
      student = Student.new('Unknown', age, name, parent_permission: true)
    elsif parent_permission =~ /^[Nn]/
      student = Student.new('Unknown', age, name, parent_permission: false)
    else
      puts "Invalid choice. Please enter a valid option. (#{parent_permission})"
      return
    end

    @people.push(student)
    puts 'Person created successfully'
  end

  # Create a teacher based on user input
  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp.to_s

    print 'Specialization: '
    specialization = gets.chomp.to_s

    teacher = Teacher.new(specialization, age, name)
    @people.push(teacher)
    puts 'Person created successfully'
  end

  # Create a book based on user input
  def create_book
    print 'Title: '
    title = gets.chomp.to_s

    print 'Author: '
    author = gets.chomp.to_s

    @books.push(Book.new(title, author))
    puts 'Book created successfully'
  end

  # Create a rental based on user input
  def create_rental
    puts 'Select a book from the following list by number'
    list_books_with_index
    book_index = gets.chomp.to_i
    unless (0...@books.length).include?(book_index)
      puts "Error adding a record. Book #{book_index} doesn't exist"
      return
    end
    book = @books[book_index]
    puts "\nSelect a person from the following list by number (not id)"
    list_people_with_index
    person_index = gets.chomp.to_i
    unless (0...@people.length).include?(person_index)
      puts "Error adding a record. Person #{person_index} doesn't exist"
      return
    end
    person = @people[person_index]
    print 'Date: '
    date = gets.chomp.to_s
    @rentals.push(Rental.new(date, book, person))
    puts 'Rental created successfully'
  end

  def list_rentals
    print 'ID of person: '
    id = gets.chomp.to_i
    selected = @rentals.find_all { |rental| rental.person.id == id }
    if selected.empty?
      puts "Person with given id #{id} does not exist"
      return
    end
    puts 'Rentals:'
    selected.map { |rental| puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}" }
  end

  # Main entry point of the application
  def run
    prompt
  end
end

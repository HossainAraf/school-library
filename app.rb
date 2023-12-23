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


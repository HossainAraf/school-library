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
require_relative 'nameable'

class Person < Nameable
  attr_accessor :classroom
  attr_reader :id, :name, :age, :rentals

  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  # Public method for if person is of age or if they have permission from parents
  def can_use_services?
    true if of_age? || @parent_permission
  end

  # Add method correct_name which returns name attribute
  def correct_name
    @name
  end

  # Implement relationship between person and rental
  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  # Private method to check age
  private

  def of_age?
    @age >= 18
  end
end

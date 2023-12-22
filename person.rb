require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  # Public method for if person is of age or if they have permission from parents
  def can_use_services?
    true if of_age? || @parent_permission
  end

  # Add method correct_name which returns name attribute
  def correct_name
    @name
  end

  # Private method to check age
  private

  def of_age?
    true if @age >= 18
  end
end

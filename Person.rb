# create class Person

class Person
  attr_accessor :id, :name, :age
  def initialize( id, name, age )
    @id = id
    @name = name
    @age = age
  end
  
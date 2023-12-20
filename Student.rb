# Student.rb
require_relative 'Person'

class Student < Person
  attr_accessor :classroom

  def initialize(id, name: 'Unknown', age, parent_permission: true, classroom)
    super(id, name: name, age: age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\\(ツ)/¯"
  end
end

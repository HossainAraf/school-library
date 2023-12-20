# Teacher.rb
require_relative 'Person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(id, name: 'Unknown', age, parent_permission: true, specialization)
    super(id, name: name, age: age, parent_permission: parent_permission)
    @specialization = specialization
  end

  # Override can_use_services to always return true for teachers
  def can_use_services?
    true
  end
end

# Teacher.rb
require_relative 'Person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(id, name: 'Unknown', age, parent_permission: true, specialization)
    super(id, name: name, age: age, parent_permission: parent_permission)
    @specialization = specialization
  end

end

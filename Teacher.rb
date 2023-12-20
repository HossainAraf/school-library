require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization, age, name = 'Unknown', permission: true)
    super(age, name, permission)
    @specialization = specialization
  end

  # Override can_use_services to always return true for teachers
  def can_use_services?
    true
  end
end

require_relative 'nameable'

class BaseDecorator < Nameable
  def initialize(nameable)
    @nameable = nameable
  end

# Implement correct_name method
  def correct_name
    @nameable.correct_name
  end

end

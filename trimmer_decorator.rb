require_relative 'base_decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_Name[0..9]
  end
end

class Rental
  attr_accessor :date, :book, :person

  def initialize(date)
    @date = date
    @book = book
    @person = person
    book.rentels << self
    person.rentels << self
  end
  
end
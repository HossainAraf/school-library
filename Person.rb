# create class Person

class Person
  attr_accessor :id, :name, :age
  def initialize( id, name: 'Unknown', age, parent_permission: true )
    @id = id
    @name = name
    @age = age
  end

  #setter method
  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end

  def of_age?
    @age >= 18
      return true
    else
      return false
    end

end

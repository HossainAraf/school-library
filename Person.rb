# create class Person

class Person
  attr_accessor :id, :name, :age
  def initialize(id, name: 'Unknown', age, parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  #setter method
  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end

  #Private method to check age
  def of_age?
    @age >= 18
      return true
    else
      return false
    end

#Public method for if person is of age or if they have permission from parents
    def can_use_services?
      if @age >= 18 || @parent_permission == true
        return true
      else
        return false
      end
    end
end

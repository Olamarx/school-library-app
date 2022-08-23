class Person
  attr_accessor :age, name;
  attr_reader :id

  def initialize(age, name = 'Unkown', parent_permission: true)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

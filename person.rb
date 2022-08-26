require './nameable_class'
require './base_decorator'

class Person < Nameable
  attr_accessor :age, :name
  attr_reader :id, :rentals

  def initialize(age, name = 'Unkown', parent_permission: true)
    super()
    @age = age
    @name = name
    @id = Random.rand(1..1000)
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  def of_age?
    @age >= 18
  end

  def add_tental(rental)
    @rentals.push(rental)
    rental.person = self
  end

  private :of_age?
end

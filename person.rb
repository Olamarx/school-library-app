require './nameable_class'
require './base_decorator'
require './capitalized_decorator'
require './trimmer_decorator'

class Person < Nameable
  attr_accessor :age, :name
  attr_reader :id

  def initialize(age, name = 'Unkown', parent_permission: true)
    super()
    @age = age
    @name = name
    @id = Random.rand(1..1000)
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalize_person = CapitalizeDecorator.new(person)
p capitalize_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalize_person)
p capitalized_trimmed_person.correct_name

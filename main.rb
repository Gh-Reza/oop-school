require_relative('classes/student')
require_relative('classes/person')
require_relative('classes/teacher')
require_relative('classes/decorator')
require_relative('classes/capitalize_decorator')
require_relative('classes/nameable')
require_relative('classes/trimmar_decorator')

person = Person.new(22)
person.name = 'maximilianus'
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

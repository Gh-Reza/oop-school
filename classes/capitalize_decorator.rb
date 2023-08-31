require_relative('decorator')

class CapitalizeDecoratore < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
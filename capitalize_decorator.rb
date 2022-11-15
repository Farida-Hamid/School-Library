require './base_decorator'

class CapitalizeDecorator <  BaseDec

  def correct_name
    @nameable.correct_name.capitalize()
  end
end
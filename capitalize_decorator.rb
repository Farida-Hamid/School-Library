require './base_decorator'

class CapitalizeDec <  BaseDec
  
  def correct_name
    @nameable.correct_name.capitalize()
  end
end
require './nameable'

class BaseDec < Nameable
  def initialize()
    super()
    @nameable = Nameable.new()
  end

  def correct_name
    @nameable.correct_name
  end
end
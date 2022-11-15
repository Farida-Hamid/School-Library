require './base_decorator'

class TrimmerDecorator < BaseDec

  def correct_name
    if @nameable.correct_name.length <= 10
      return @nameable.correct_name[0..10]
    end

    @nameable.correct_name
  end
end
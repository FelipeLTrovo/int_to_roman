require_relative '../constants/roman_numerals'

class IntegerToRoman
  def initialize(number)
    @number = number
    @outcome = ''
  end

  def call
    return check_int unless @number.is_a?(Integer)
    return check_zero if @number.zero?
    int_to_roman(@number)
    @outcome
  end

  private

  def check_int
    "Only Integer parameters are allowed."
  end

  def check_zero
    "Roman numerals don't have the number zero."
  end

  def int_to_roman(number)
    ROMAN_NUMERALS.each do |key, value|
      until number < value do
        number = number - value
        @outcome << key
      end
    end
  end
end
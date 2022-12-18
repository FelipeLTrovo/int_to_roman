require './constants/roman_numerals'

@outcome = ''

def int_to_roman(number)
  ROMAN_NUMERALS.each do |key, value|
    until number < value do
      number = number - value
      @outcome << key
    end
  end
end

int_to_roman(500)
puts @outcome
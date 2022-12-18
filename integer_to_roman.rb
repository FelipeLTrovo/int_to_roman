ROMAN_NUMERALS = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}.freeze

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
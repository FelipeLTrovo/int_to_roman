require_relative './commands/integer_to_roman'
require 'colorize'


while true do
  puts "\nPlease type an Integer: ".blue
  param = gets.chomp
  param = param.to_i if(param == '0' || param.to_i > 0)
  cmd = IntegerToRoman.new(param).call
  puts "\nResult: #{cmd}".green
  puts "\nPress Ctrl + C to exit the program.".red
end
require_relative 'logic.rb'

puts 'Enter string'
s = gets
name = 'file.txt'
f = File.open(name, 'w') { |x| x.write(s) }
puts count(name)

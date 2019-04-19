require_relative 'logic.rb'

puts 'Enter each side length'
x = gets.to_f
y = gets.to_f
z = gets.to_f

a = Rect.new(x, y)

b = Parr.new(x, y, z)

a.show
puts ' '
b.show
puts ' '
puts a.square?
puts b.volume

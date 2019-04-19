require_relative 'logic.rb'
N = 10
puts "Enter #{N} point coordinates"
x = []
y = []
N.times do |i|
  puts "#{i + 1}:"
  a = gets.to_f
  b = gets.to_f
  x << a
  y << b
end

f1 = proc { |z| Math.cos(z) }

f2 = ->(z) { Math.sin(z * z) }

puts ''

N.times do |i|
  p "cos(x) for point #{i + 1}"
  p neibr(x[i], y[i], f1)
  p "sin(x**2) for point #{i + 1}"
  p neibr(x[i], y[i], f2)
end

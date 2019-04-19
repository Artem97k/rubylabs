require_relative 'logic.rb'
puts 'Enter amount of strings'
i = gets.to_i
puts 'Enter strings'
s = Array.new(i) { |x| x = gets }
puts ' '
func(s)
puts ' '
puts 'Strings after permutation'
s.each { |x| puts x }

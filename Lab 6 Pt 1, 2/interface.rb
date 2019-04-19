require_relative 'logic.rb'
puts 'Enter radius'
r = gets.to_f
puts "Circle length using 2*PI*R formula: #{2 * Math::PI * r} "
puts "Circle length using loop with 10e-3 precision: #{calc_lgth1(r, 0.001)} "
puts "Circle length using loop with 10e-4 precision: #{calc_lgth1(r, 0.0001)} "
puts "Circle length using enumerator with 10e-3 precision: #{calc_lgth2(r, 0.001)} "
puts "Circle length using enumerator with 10e-4 precision: #{calc_lgth2(r, 0.0001)} "

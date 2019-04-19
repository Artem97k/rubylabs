def func(s)
  s.each_with_index do |x, k|
    i = 0
    x.scan(/[\d]{2,}/) { i += 1 }
	if i == 0
	  puts "No groups of numbers in string number #{k + 1}"
	elsif i.even?
	  x.gsub!(/[\d]{2,}/, '&&&&&&')
    end
  end
  s
end

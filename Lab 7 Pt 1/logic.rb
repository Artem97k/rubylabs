def count(s)
  f = File.open(s, 'r') { |x| x.gets.split(' ').select { |i| i.length >= 5 }.size }
end

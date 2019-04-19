def func(a, r)
  Math.sqrt(2 * r * r - 2 * r * Math.sqrt(r * r - a * a * 0.25))
end

def calc_lgth1(r, del)
  n = 6
  a = r
  p1 = 0
  p2 = 6 * a
  while p2 - p1 > del
    p1 = p2
    a = func(a, r)
    n *= 2
    p2 = a * n
  end
  p2
end

def calc_lgth2(r, del)
  a = r
  n = 6
  p1 = 0
  p2 = a * n
  enum = Enumerator.new do |yielder|
    while p2 - p1 > del
      p1 = p2
      a = func(a, r)
      n *= 2
      p2 = n * a
    end
    yielder << p2
  end
  enum.first
end

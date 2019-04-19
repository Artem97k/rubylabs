def neibr(x, y, func)
  if (func.call(x) - y).abs <= 0.001
    true
  else
    false
  end
end

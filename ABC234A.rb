def weird_function(t)
  t ** 2 + 2 * t + 3
end

t = gets.chomp.to_i

puts weird_function(weird_function(weird_function(t) + t) + + weird_function(weird_function(t)))

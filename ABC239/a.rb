def horizon(n)
  Math.sqrt(n * (12800000 + n))
end

n = gets.chomp.to_i

puts horizon(n)

a, b, c = gets.chomp.split('').map(&:to_i)

abc = a + (b * 10) + (c * 100)
bca = b + (c * 10) + (a * 100)
cab = c + (a * 10) + (b * 100)

puts abc + bca + cab

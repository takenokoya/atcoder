def kagami_mochi(numbers)
  numbers.uniq.sort.reverse.size
end

n = gets.chomp.to_i
numbers = []
n.times do
  numbers << gets.chomp.to_i
end

puts kagami_mochi(numbers)

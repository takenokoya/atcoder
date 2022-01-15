n = gets.chomp.to_i
numbers = gets.chomp.split.map(&:to_i)
index = 0
while index != n - 1 && numbers[index] < numbers[index +  1]
  index += 1
end

puts numbers[index]

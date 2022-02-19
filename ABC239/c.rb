def uc_distance(a, b, c, d)
  Math.sqrt((a - c) ** 2 + (b - d) ** 2)
end

a, b, c, d = gets.chomp.split.map(&:to_i)

p_array = [[-2, -1], [-1, -2], [1, -2], [2, -1], [-2, 1], [-1, 2], [1, 2], [2, 1]]

p = p_array.map do |array|
  [a + array[0], b + array[1]]
end

q = p_array.map do |array|
  [c + array[0], d + array[1]]
end

if (p & q).empty?
  puts 'No'
else
  puts 'Yes'
end

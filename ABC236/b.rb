n = gets.chomp.to_i
a_numbers = gets.chomp.split.map(&:to_i)

h = Hash.new { |h, k| h[k] = [] }
a_numbers.each_with_index { |n, i| h[n] << i }

n.downto(1).each do |i|
  next unless h[i].size == 3
  puts i
end

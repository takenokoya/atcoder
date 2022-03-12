n = gets.chomp.to_i
a_array = gets.chomp.split.map(&:to_i)
b_array = gets.chomp.split.map(&:to_i)

hash = Hash.new { |h, k| h[k] = [] }
a_array.each_with_index { |a, i| hash[i] << a }
b_array.each_with_index { |b, i| hash[i] << b }

@count = 0
hash.values.each { |array| @count += 1 if array[0] == array[1] }
puts @count

another_hash = Hash.new { |h, k| h[k] = [] }
a_array.each_with_index { |a, i| another_hash[a] << i }
b_array.each_with_index { |b, i| another_hash[b] << i }

@another_count = 0
another_hash.keys.each do |k|
  if another_hash[k].size == 2 && another_hash[k][0] != another_hash[k][1]
    @another_count += 1
  end
end
puts @another_count

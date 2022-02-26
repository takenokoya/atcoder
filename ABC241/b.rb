n, m = gets.chomp.split.map(&:to_i)
a_array = gets.chomp.split.map(&:to_i)
b_array = gets.chomp.split.map(&:to_i)

hash = Hash.new { |h, k| h[k] = 0 }
a_array.each do |a|
  hash[a] += 1
end

b_array.each do |b|
  if hash[b]
    hash[b] -= 1
    if hash[b].negative?
      puts 'No'
      exit
    end
  else
    puts 'No'
    exit
  end
end

puts 'Yes'

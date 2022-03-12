n = gets.chomp.to_i
numbers = []
n.times do
  numbers << gets.chomp.split.map(&:to_i)
end
s = gets.chomp.split('')

hash = Hash.new { |h, k| h[k] = [] }
numbers.each_with_index do |n, i|
  hash[s[i]] << n
end

r_hash = Hash.new { |h, k| h[k] = [] }
hash["R"].each {|r| r_hash[r[1]] << r[0]  }
r_hash = r_hash.each_with_object({}) do |(k, v), memo|
  memo[k] = v.min
end

l_hash = Hash.new { |h, k| h[k] = [] }
hash["L"].each {|l| l_hash[l[1]] << l[0]  }
l_hash = l_hash.each_with_object({}) do |(k, v), memo|
  memo[k] = v.max
end

r_hash.each do |k, v|
  next unless l_hash[k]
  if l_hash[k] > v
    puts 'Yes'
    exit
  end
end

puts 'No'

h, w = gets.chomp.split.map(&:to_i)
array = []
h.times do
  array << gets.chomp.split.map(&:to_i)
end

new_array = []

w.times do |j|
  array.each do |a|
    new_array << a[j]
  end
end

new_array.each_slice(h) { |a| puts a.join(' ') }

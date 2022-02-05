n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

new_array = [0]
array.each do |a|
  new_array = new_array.map do |t|
    if t + a < 360
      t + a
    else
      count = (t + a) / 360
      (t + a) - 360 * count
    end
  end
  new_array << 0
end

possibles = []
new_array.sort!
new_array.each_cons(2) { |v| possibles << v[1] - v[0]}
possibles << 360 - new_array[-1]

puts possibles.max

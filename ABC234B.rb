n = gets.chomp.to_i
numbers = []
n.times do
  numbers << gets.chomp.split.map(&:to_i)
end

numbers = numbers.map do |n1|
  numbers.map do |n2|
    x1, y1 = n1
    x2, y2 = n2
    Math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2) # ユークリッド距離 
  end
end

puts numbers.flatten.max

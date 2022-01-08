def coins(x, a, b, c)
  count = 0
  (0..a).each do |a|
    (0..b).each do |b|
      (0..c).each do |c|
        if a * 500 + b * 100 + c * 50 == x
          count += 1
        end
      end
    end
  end
  count
end

a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i

puts coins(x, a, b, c)

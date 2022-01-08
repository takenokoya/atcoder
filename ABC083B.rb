def some_sums(n, a, b)
  sum = 0
  (1..n).each do |n|
    sum_digit = n.to_s.split('').map(&:to_i).sum
    if (sum_digit >= a && sum_digit <= b)
      sum += n
    end
  end
  sum
end

n, a, b = gets.chomp.split(" ").map(&:to_i)
puts some_sums(n, a, b)

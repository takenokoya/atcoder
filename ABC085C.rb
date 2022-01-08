def otoshidama(n, yen)
  (0..n).each do |a|
    (0..n - a).each do |b|
      c = n - a - b
      if a * 10_000 + b * 5000 + c * 1000 == yen
        return [a, b, c]
      end
    end
  end
  [-1, -1, -1]
end

n, yen = gets.chomp.split(' ').map(&:to_i)
puts otoshidama(n, yen).join(' ')

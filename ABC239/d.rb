a, b, c, d = gets.chomp.split.map(&:to_i)

def is_prime?(i)
  return false if i == 1
  return true if i == 2

  judge = true
  (2..i).each do |j|
    # root i までで十分
    break if j > i ** 0.5
    if i % j == 0
      judge = false
      break
    end
  end
  judge
end

prime_numbers = (1..200).map { |i| i if is_prime?(i) }.compact

aoki_pattern = (a..b).map do |i|
  (c..d).map do |n|
    if prime_numbers.include?(i + n)
      [i, n]
    end
  end.compact
end.flatten(1)

if aoki_pattern.to_h.size < (a..b).size
  puts 'Takahashi'
else
  puts 'Aoki'
end


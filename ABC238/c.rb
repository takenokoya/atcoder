const = 998244353
n = gets.chomp.to_i
p = 1

x = [n, 9].min
s = x * (x + 1)/2
while 0 < n -= x
  x = [n, 9 * p *= 10].min
  s += x * (x + 1)/2
  s %= const
end

puts s

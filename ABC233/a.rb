# https://atcoder.jp/contests/abc233/tasks/abc233_a

x, y = gets.chomp.split.map(&:to_i)

diff = y - x
if diff <= 0
  puts 0
elsif diff % 10 != 0
  puts diff.ceil(-1) / 10
else
  puts diff / 10
end

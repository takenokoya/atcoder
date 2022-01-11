# https://atcoder.jp/contests/abc233/tasks/abc233_b

l, r = gets.chomp.split.map(&:to_i) # number[]
s = gets.chomp # string

target = s.slice(l-1..r-1)
reverse = target.reverse
puts s.sub(target, reverse)

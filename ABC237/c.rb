s = gets.chomp.split('')

r_count = 0
while s[-1] == 'a'
  r_count += 1
  s.pop
end

count = 0
while s[0] == 'a'
  count += 1
  s.shift
end

if count > r_count
  puts 'No'
  exit
end

if s == s.reverse || s.empty?
  puts 'Yes'
else
  puts 'No'
end

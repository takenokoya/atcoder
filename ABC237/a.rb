n = gets.chomp.to_i

if n >= -2 ** 31 && n < 2**31
  puts 'Yes'
else
  puts 'No'
end

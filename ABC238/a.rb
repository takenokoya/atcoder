n = gets.chomp.to_i

if 2 ** n > n ** 2
  puts 'Yes'
else
  puts 'No'
end

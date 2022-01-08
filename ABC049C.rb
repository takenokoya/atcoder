def dream(s)
  array = %w[eraser erase dreamer dream]
  array.each { |a| s.gsub!(a, '') }
  if s == ''
    'YES'
  else
    'NO'
  end
end

s = gets.chomp
puts dream(s)

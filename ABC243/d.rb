n, @x = gets.chomp.split.map(&:to_i)
s = gets.chomp.gsub('LU', '').gsub('RU', '').split('')

def left(x)
  2 * x
end

def right(x)
  2 * x + 1
end

def parent(x)
  if x.odd?
    (x - 1) / 2
  else
    x / 2
  end
end


s.each do |s|
  if s == 'U'
    @x = parent(@x) unless @x == 1
  elsif s == 'L'
    @x = left(@x)
  else
    @x = right(@x)
  end
end

puts @x

# TLE

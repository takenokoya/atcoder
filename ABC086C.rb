def traveling(t, x, y)
  # 移動可能な距離
  p_distance = (t - @t).abs
  # マンハッタン距離(最短距離)
  m_distance = (x - @x).abs + (y - @y).abs
  if p_distance < m_distance || p_distance % 2 != m_distance % 2
    puts 'No'
    exit
  else
    @t, @x, @y = [t, x, y]
  end
end

n = gets.chomp.to_i
results = []
@t, @x, @y = [0, 0, 0]

n.times do
  numbers = gets.chomp.split(' ').map(&:to_i)
  traveling(*numbers)
end

puts 'Yes'

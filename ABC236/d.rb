n = gets.chomp.to_i

h = Hash.new { |h, k| h[k] = {} }
1.upto(2*n-1) do |i|
  h[i] = gets.chomp.split.map.with_index(i+1) { |a, i| [i, a] }.to_h
end


1.upto(2*n-1) do |i|
  1.upto(2*n) do |j|
    puts h[i][j]
  end
end

# 時間切れ


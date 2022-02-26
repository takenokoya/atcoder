@n = gets.chomp.to_i
hash = Hash.new { |h, k| h[k] = [] }
@n.times do |i|
  hash[i] = gets.chomp.split('').map { |s| s == '.' ? 0 : 1 }
end

def dfs(x1, y1, hash, count, buf)
  return 'No' if hash[x1][y1] == 0
  hash[x1][y1] = 0 # 現在位置を0に変更

  count += 1
  if count >= 6
    'Yes'
  end

  # 移動する8方向をループ
  [-1, 0, 1, 0].each do |x2|
    [-1, 0, 1, 0].each do |y2|
      nx = x1 + x2
      ny = y1 + y2
      next unless nx >= 0 && nx < @n && ny >= 0 && ny < @n
      if hash[nx][ny] == 1
        dfs(nx, ny, hash, count, buf)
      else
        buf -= 1
        hash[nx][ny] = 1
        puts "buf: #{buf}"
        if buf.negative?
          break
        else
          dfs(nx, ny, hash, count, buf)
        end
      end
    end
  end
end

(0..@n).each do |x|
  (0..@n).each do |y|
    if hash[x][y] == 1
      if dfs(x, y, hash.dup, 0, 2) == 'Yes'
        puts 'Yes'
        exit
      end
    end
  end
end

puts 'No'

# 時間切れ

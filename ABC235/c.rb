_n, q = gets.chomp.split.map(&:to_i)
a_numbers =  gets.chomp.split.map(&:to_i)
queries = []
q.times do
  queries << gets.chomp.split.map(&:to_i)
end

h = Hash.new { |h, k| h[k] = [] }
a_numbers.each_with_index { |n, i| h[n] << i }

queries.each do |query|
  key = query[0]
  goal_count = query[1]
  if h[key].size >= goal_count
    puts (h[key][goal_count - 1] + 1) # 添字を個数に変換
  else
    puts(-1)
  end
end

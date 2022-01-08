def card_game_for_two(numbers)
  sum = 0
  numbers.each_slice(2) do |a, b|
    sum += a - b.to_i
  end
  sum
end 

_n = gets.chomp.to_i
numbers = gets.chomp.split(' ').map(&:to_i).sort.reverse

puts card_game_for_two(numbers)

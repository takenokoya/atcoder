v, @a, @b, @c = gets.chomp.split.map(&:to_i)


def use(remain)
  remain -= @a
  if remain.negative?
    return 'F'
  end
  remain -= @b
  if remain.negative?
    return 'M'
  end
  remain -= @c
  if remain.negative?
    return 'T'
  end
  use(remain)
end

def reduce(remain)
  remain / (@a + @b + @c)
end

remain = v - (@a + @b + @c) * reduce(v)

puts use(remain)

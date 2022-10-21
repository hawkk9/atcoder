def can_view(h, i)
  return true if i == 0
  p h
  p i
  p highest(i - 1)
  h >= highest(i - 1)
end

def highest(i)
  H.slice(0..i).max
end

N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

i = 0
count = H.count do |h|
  result = can_view(h, i)
  i += 1
  result
end

puts count

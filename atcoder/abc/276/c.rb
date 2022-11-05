N = gets.chomp.to_i
P = gets.chomp.split.map(&:to_i)

before = nil
target_i = nil

P.reverse.each_with_index do |p, i|
  unless before.nil?
    if p > before
      target_i = i
      break
    end
  end
  before = p
end

second_start = (N - target_i - 1)

first = second_start - 1 > 0 ? P.slice(0..(second_start - 1)) : []
second = P.slice((second_start)..(N - 1))

max = 0
t = second.first
second.each do |n|
  if n > max && n < t
    max = n
  end
end

puts (first + [max] + (second - [max]).sort.reverse).join(' ')

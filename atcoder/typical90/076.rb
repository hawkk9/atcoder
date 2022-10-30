def get_size(i)
  i < N ? A[i] : A[i - N]
end

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

hole_size = A.sum
target_size = hole_size / 10

result = false
N.times do |start_i|
  sub_total = A[start_i]

  i = 1
  while sub_total < target_size do
    sub_total += get_size(start_i + i)
    i += 1
  end

  if sub_total == target_size
    result = true
    break
  end
end

puts result ? 'Yes' : 'No'

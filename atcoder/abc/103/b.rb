S = gets.chomp
T = gets.chomp

s_length = S.length

result = false
len = 1
while len < s_length do
  first = S[(s_length - len)..(s_length - 1)]
  second = S[0..(s_length - len - 1)]

  if first + second == T
    result = true
    break
  end

  len += 1
end

puts result ? 'Yes' : 'No'

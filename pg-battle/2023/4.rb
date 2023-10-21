N = gets.chomp.to_i
S = gets.chomp.to_s

PAT1 = 'MF'
PAT2 = 'FM'

s = S
index = 0
patterns = []
while s.length > 0 do
  count = 0
  count += s.scan(PAT1).length
  count += s.scan(PAT2).length
  patterns[index] = count
  next_s = s.sub(PAT1, '')
  next_s = s.sub(PAT2, '') if next_s.length == s.length
  break if next_s.length == s.length
  s = next_s
  index += 1
end

if s.length == 0
  result = 1
  patterns.each do |pattern|
    result *= pattern
  end
  puts result % 998244353
else
  puts 0
end

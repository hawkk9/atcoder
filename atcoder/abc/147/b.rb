S = gets.chomp

S.slice!(S.length / 2) unless S.length % 2 == 0

half =  S.length / 2
first = S[0..(half - 1)]
second =  S[half..(S.length - 1)].reverse

count = 0
i = 0
first.each_char do |char|
  count += 1 if char != second[i]
  i += 1
end

puts count

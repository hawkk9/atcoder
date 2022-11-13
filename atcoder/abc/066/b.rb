S = gets.chomp

answer = nil
len = S.length - 1
loop do
  if len % 2 == 0
    half = len / 2
    first = S[0..(half - 1)]
    second = S[half..(half + half - 1)]

    if first == second
      answer = len
      break
    end
  end
  len -= 1
end

puts answer

def count_diff(str1, str2)
  count = 0
  (0..str1.length).each do |i|
    count += 1if str1[i] != str2[i]
  end
  count
end

S = gets.chomp
T = gets.chomp

min_diff_count = Float::MAX
(0..(S.length - T.length)).each do |start|
  diff_count = count_diff(S[start..(start + T.length - 1)], T)
  min_diff_count = diff_count if diff_count < min_diff_count
end

puts min_diff_count

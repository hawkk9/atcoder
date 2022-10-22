N, p, q = gets.chomp.split.map(&:to_i)

scores = []
pointers = []
N.times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  score = p * a + q * b
  score_obj = { score: score }
  pointers[i] = score_obj
  scores.push(score_obj)
end

p scores.sort{|a, b| a[:score] <=> b[:score] }

# 順位を記録
scores.each do |score|

end

N.times do |i|
  p pointers[i]
end

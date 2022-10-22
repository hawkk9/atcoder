N, p, q = gets.chomp.split.map(&:to_i)

scores = []
N.times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  score = p * a + q * b
  scores.push(score)
end

p scores

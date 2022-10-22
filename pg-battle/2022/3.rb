def count_grater_score(sorted_uniq_scores, group_by_scores, i)
  return 0 if i == 0
  group_by_scores[sorted_uniq_scores[i - 1]] + count_grater_score(sorted_uniq_scores, group_by_scores, i - 1)
end

N, p, q = gets.chomp.split.map(&:to_i)

scores = []
N.times do
  a, b = gets.chomp.split.map(&:to_i)
  score = p * a + q * b
  scores.push(score)
end

sorted_scores = scores.sort{|a, b| b <=> a }
sorted_uniq_scores = sorted_scores.uniq
group_by_scores = sorted_scores.tally
rank = {}
sorted_uniq_scores.each_with_index do |score, i|
  rank[score] = count_grater_score(sorted_uniq_scores, group_by_scores, i) + 1
end

scores.each do |score|
  puts rank[score]
end

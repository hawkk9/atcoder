N = gets.chomp.to_i
P = gets.chomp.split.map(&:to_i)

list = (1..N).to_a
permutations = list.permutation.to_a

answer = nil
before = nil
permutations.each do |permutation|
  if permutation == P
    answer = before
    break
  end
  before = permutation
end

puts answer.join(' ')

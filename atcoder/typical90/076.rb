N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

hole_size = A.sum
target_size = hole_size / 10.0

cuts = [0]
(1..N).each do |i|
  cuts[i] = cuts[i - 1] + A[i - 1]
end
(1..N).each do |i|
  cuts[i + N] = cuts[i + N - 1] + A[i - 1]
end

# R - L = target_size
# R = target_size + L

# p cuts
result = false
N.times do |l|
  target = cuts[l] + target_size
  hit = cuts.bsearch{|cut| cut >= target }
  # puts "L=#{l}, target=#{target}, hit=#{hit}"
  result = hit != nil && hit == target
  break if result
end

puts result ? 'Yes' : 'No'

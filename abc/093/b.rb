def min_top_k(a, b, k)
  top_k = []
  a.upto(a + (k - 1)).each do |i|
    break if i > b
    top_k.push(i)
  end
  top_k
end

def max_top_k(a, b, k)
  top_k = []
  (b - (k - 1)).upto(b).each do |i|
    break if i < a
    top_k.push(i)
  end
  top_k
end


a, b, k = gets.chomp.split.map(&:to_i)

results = min_top_k(a, b, k).concat(max_top_k(a, b, k)).uniq

results.each do |i|
  puts i
end

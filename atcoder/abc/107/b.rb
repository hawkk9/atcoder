H, W = gets.chomp.split.map(&:to_i)
a = []
H.times do
  a.push(gets.chomp.split(''))
end

y_compressed = []
a.each do |line|
  next if line.all?{|point| point == '.' }
  y_compressed.push(line)
end

x_compressed = Array.new(y_compressed.length){|_| []}
W.times do |x|
  next if y_compressed.all?{|line| line[x] == '.' }
  y_compressed.each_with_index do |line, y|
    x_compressed[y].push(line[x])
  end
end

x_compressed.each do |line|
  puts line.join
end

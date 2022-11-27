N = gets.chomp.to_i
S = []
N.times do
  S.push(gets.chomp.split(''))
end

(N - 1).downto(1) do |i|
  2.upto(N * 2 - 2) do |j|
    next unless S[i - 1][j - 1] == '#'
    if [S[i][j - 2], S[i][j - 1], S[i][j]].include?('X')
      S[i - 1][j - 1] = 'X'
    end
  end
end

S.each do |line|
  puts line.join
end


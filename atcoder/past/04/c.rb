def count_around(board, x, y)
  count = 0
  (-1..1).each do |dy|
    ty = y + dy
    next if ty < 0 || ty > N - 1
    (-1..1).each do |dx|
      tx = x + dx
      next if tx < 0 || tx > M - 1
      next unless board[ty][tx] == '#'
      count += 1
    end
  end
  count
end

N, M = gets.chomp.split.map(&:to_i)
s = []
N.times do
  s.push(gets.chomp.split(''))
end

answer_board = Array.new(N) do |_y|
  Array.new(M) do |_x|
    []
  end
end
N.times do |y|
  M.times do |x|
    answer_board[y][x] = count_around(s, x, y)
  end
end

answer_board.each do |line|
  puts line.join
end

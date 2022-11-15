def is_bingo?(board)
  # 横
  return true if board.any? do |line|
    line.all? {|cell| cell == '-' }
  end
  # 縦
  return true if (0..2).any? do |x|
    (0..2).all? {|y| board[y][x] == '-' }
  end
  # 斜め
  return true if [[[0, 0], [1, 1], [2, 2]], [[0, 2], [1, 1], [0, 2]]].any? do |points|
    points.all? {|x, y| board[y][x] == '-' }
  end
  false
end

A = []
3.times do
  A.push(gets.chomp.split)
end
N = gets.chomp.to_i
b = []
N.times do
  b.push(gets.chomp)
end

b.each do |num|
  A.each_with_index do |line, i|
    line.each_with_index do |cell, j|
      A[i][j] = '-' if cell == num
    end
  end
end

puts is_bingo?(A) ? 'Yes' : 'No'

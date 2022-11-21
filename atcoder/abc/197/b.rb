def count_visible(board, x, y, inc_x, inc_y)
  count = 0
  loop do
    x += inc_x
    y += inc_y
    break if x < 0 || x >= H || y < 0 || y >= W
    break if board[x][y] == '#'
    count += 1
  end
  count
end

H, W, X, Y = gets.chomp.split.map(&:to_i)
S = []
H.times do
  S.push(gets.chomp)
end

x = X - 1
y = Y - 1
visible_count = count_visible(S, x, y, -1, 0) + count_visible(S, x, y, 1, 0) + count_visible(S, x, y, 0, -1) + count_visible(S, x, y, 0, 1) + 1

puts visible_count


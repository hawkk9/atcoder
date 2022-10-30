def in_area?(x, y)
  x >= 0 && x < 9 && y >= 0 && y < 9
end

def search(px, py, x, y)
  return false unless in_area?(px + x, py + y) && in_area?(px + x - y, py + y + x) && in_area?(px + x - y - x, py + y + x - y)
  @board[py + y][px + x] && @board[py + y + x][px + x - y] && @board[py + y + x - y][px + x - y - x]
end

@board = []
9.times do |y|
  s = gets.chomp
  x = 0
  @board[y] = []
  s.each_char do |c|
    @board[y][x] = c == '#'
    x += 1
  end
end

count = 0
@board.each_with_index do |row, y|
  row.each_with_index do |e, x|
    if e
      1.upto(8) do |yy|
        0.upto(8) do |xx|
          if search(x, y, xx, yy)
            count += 1
          end
        end
      end
    end
  end
end

puts count

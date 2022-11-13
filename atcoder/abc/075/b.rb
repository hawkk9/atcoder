def count_up_around(x, y, board)
  (-1..1).each do |my|
    ay = y + my
    next if ay < 0 || ay > H - 1
    (-1..1).each do |mx|
      ax = x + mx
      next if ax < 0 || ax > W - 1
      next if board[ay][ax] == '#'
      board[ay][ax] = board[ay][ax].to_i + 1
    end
  end
end

H, W = gets.chomp.split.map(&:to_i)
S = []
H.times do
  S.push(gets.chomp)
end

answer_board = S.map {|line| line.gsub(/\./, '0').split('') }

S.each_with_index do |line, y|
  line.split('').each_with_index do |point, x|
    if point == '#'
      count_up_around(x, y, answer_board)
    end
  end
end

answer_board.each do |line|
  puts line.join
end

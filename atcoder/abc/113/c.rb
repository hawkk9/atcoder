N, M = gets.chomp.split.map(&:to_i)

cities = []
prefs = {}
M.times do
  p, y = gets.chomp.split.map(&:to_i)
  prefs[p] = [] if prefs[p].nil?
  prefs[p].push(y)
  cities.push(y)
end

sorted_prefs = prefs.map do |pref, years|
  [pref, years.sort]
end.to_h

codes = {}
sorted_prefs.each do |pref, years|
  years.each_with_index do |year, i|
    codes[year] = format("%06d%06d", pref, i + 1)
  end
end

cities.each do |year|
  puts codes[year]
end

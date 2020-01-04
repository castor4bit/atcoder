n = gets.to_i
plans = readlines.map { |line| line.split(" ").map(&:to_i) }

result = true
x = y = t = 0

plans.each do |plan|
  tt, xx, yy = plan
  dt = tt - t
  dist = (xx - x).abs + (yy - y).abs

  if dist > dt || tt % 2 != (xx + yy) % 2
    result = false
    break
  end

  x = xx
  y = yy
  t = tt
end

puts result ? 'Yes' : 'No'

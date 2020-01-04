n, w = gets.split(" ").map(&:to_i)
items = []
readlines.each do |line|
  _w, _v = line.split(" ").map(&:to_i)
  items.push([_w, _v])
end

vsum = items.inject(0) { |sum, item| sum + item[1] }

dp = Array.new(n)
(0..n).each do |i|
  dp[i] = Array.new(vsum + 1, 1.0 / 0)
end
dp[0][0] = 0

(0..(n - 1)).each do |i|
  _w, _v = items[i]
  (0..vsum).each do |sum_v|
    if sum_v - _v >= 0
      dp[i + 1][sum_v] = [dp[i + 1][sum_v], dp[i][sum_v - _v] + _w].min
    else
      dp[i + 1][sum_v] = [dp[i + 1][sum_v], _w].min
    end
    dp[i + 1][sum_v] = [dp[i + 1][sum_v], dp[i][sum_v]].min
  end
end

p dp[-1].select { |v| v <= w }.size - 1

n = gets.to_i
h = [[], [], []]
readlines.each do |line|
  a, b, c = line.chomp.split(" ").map(&:to_i)
  h[0].push(a)
  h[1].push(b)
  h[2].push(c)
end

dp = Array.new(n + 1, [])
dp[0] = [0, 0, 0]
(1..n).each do |i|
  dp[i] = [-1.0 / 0, -1.0 / 0, -1.0 / 0]
end

(0..(n - 1)).each do |i|
  (0..2).each do |j|
    (0..2).each do |k|
      dp[i + 1][j] = [dp[i + 1][j], dp[i][k] + h[j][i]].max unless j == k
    end
  end
end

p dp[-1].max

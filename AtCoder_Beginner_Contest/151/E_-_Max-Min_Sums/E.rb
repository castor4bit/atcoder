n, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)

result = 0
a.combination(k).each do |s|
  result += s.max - s.min
  result = result % 1000000007
end

puts result

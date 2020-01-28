n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

asum = a.inject(:+)
bsum = b.inject(:+)

if bsum > asum
  puts "-1"
else
  diff = a.map.with_index {|v, idx| v - b[idx] }

  lacks = diff.select {|d| d < 0 }
  remains = diff.select {|d| d > 0 }.sort.reverse

  count = lacks.size
  lacksum = lacks.empty? ? 0 : lacks.inject(:+)

  while lacksum < 0
    count += 1
    lacksum += remains.shift
  end

  puts count
end

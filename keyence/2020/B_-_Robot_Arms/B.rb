n = gets.to_i
robots = []
n.times do
  xl = gets.split(" ").map(&:to_i)
  robots.push(xl)
end

ranges = robots
         .map {|r| [r[0] - r[1], r[0] + r[1]] }
         .sort {|a, b| a[1] <=> b[1] }

pos = -1.0 / 0
count = 0
ranges.each do |r1|
  if r1[0] >= pos
    count += 1
    pos = r1[1]
  end
end

puts count

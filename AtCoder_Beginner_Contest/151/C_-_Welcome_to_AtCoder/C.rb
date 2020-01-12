n, m = gets.split(" ").map(&:to_i)
result = []
m.times do
  p, s = gets.chomp.split(" ")
  result.push([p.to_i, s])
end

penalties = 0
ac = Hash.new(0)
wa = Hash.new(0)

result.each do |r|
  p, s = r
  if s == 'AC' and !ac.key?(p)
    penalties += wa[p]
    ac[p] = 1
  else
    wa[p] += 1
  end
end

puts "#{ac.size} #{penalties}"

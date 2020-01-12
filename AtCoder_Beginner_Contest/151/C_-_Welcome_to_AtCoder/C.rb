n, m = gets.split(" ").map(&:to_i)
result = []
m.times do
  p, s = gets.chomp.split(" ")
  result.push([p.to_i, s])
end

penalties = Hash.new(0)
account = Hash.new(0)
wacount = Hash.new(0)

result.each do |r|
  p, s = r
  if s == "WA"
    wacount[p] += 1
  else
    penalties[p] = wacount[p] unless penalties.key?(p)
    account[p] = 1
  end
end

c1 = 0
c2 = 0
account.each { |_, v| c1 += v }
penalties.each { |_, v| c2 += v }
puts "#{c1} #{c2}"

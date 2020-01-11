n = gets.to_i
s = []
t = []
n.times do
  _s, _t = gets.chomp.split(" ")
  s.push(_s)
  t.push(_t.to_i)
end
x = gets.chomp

idx = s.index(x)
puts idx == n - 1 ? 0 : t[(idx + 1)..-1].inject(&:+)

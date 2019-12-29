n, k = gets.chomp.split(" ").map(&:to_i)
r, s, p = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.split("")

for i in 0..(k - 1)
  j = i
  while j < t.size do
    if (j - k) >= 0 and t[j - k] == t[j] then
      t[j] = "x"
    end

    j += k
  end
end

sum = t.reduce(0) do |sum, a|
  case a
  when "r"
    sum + p
  when "s"
    sum + r
  when "p"
    sum + s
  else
    sum
  end
end

p sum

a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i

cnt = 0
for i in 0..a
  for j in 0..b
    for k in 0..c
      cnt += 1 if (i * 500 + j * 100 + k * 50) == x
    end
  end
end

puts cnt

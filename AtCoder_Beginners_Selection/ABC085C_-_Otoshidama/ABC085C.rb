n, p = gets.split(" ").map(&:to_i)

def goukei(x, y, z)
  x * 10000 + y * 5000 + z * 1000
end

def kumiawase(n, p)
  (0..n).to_a.reverse.each do |x|
    (0..(n - x)).to_a.reverse.each do |y|
      z = n - (x + y)
      return [x, y, z] if goukei(x, y, z) == p
    end
  end

  [-1, -1, -1]
end

puts kumiawase(n, p).join(" ")

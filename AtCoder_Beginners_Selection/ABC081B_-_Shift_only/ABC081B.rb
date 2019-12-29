#!/bin/ruby

n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)

min = 1.0 / 0
a.each do |i|
  c = 0
  while i % 2 == 0
    c += 1
    i /= 2
  end
  min = [min, c].min
end

puts min

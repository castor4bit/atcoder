#!/bin/ruby

nums = [gets.to_i] + gets.chomp.split(" ").map(&:to_i)
s = gets.chomp

puts "#{nums.inject(&:+)} #{s}"

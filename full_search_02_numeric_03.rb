n = gets.to_i
if 2.upto(Math.sqrt(n)).any? { |num| n % num == 0 } || n == 1
  puts "No"
else
  puts "Yes"
end

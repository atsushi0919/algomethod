res = 0
1.upto(gets.to_i) do |n|
  res += 1 if n % 2 != 0 && n % 3 != 0 && n % 5 != 0
end
puts res

=begin
入力例1
6
出力例1
4
入力例2
32
出力例2
6 
=end

n = gets.to_i
res = 1
1.upto(n / 2) do |m|
  res += 1 if n % m == 0
end
puts res

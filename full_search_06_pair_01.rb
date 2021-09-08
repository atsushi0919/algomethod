=begin
入力例 1
3 10
1 2 9
出力例 1
2
入力例 2
3 2
1 2 9
出力例 2
0
=end

n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

res = 0
0.upto(n - 2) do |i|
  (i + 1).upto(n - 1) do |j|
    res += 1 if a[i] + a[j] <= k
  end
end
puts res

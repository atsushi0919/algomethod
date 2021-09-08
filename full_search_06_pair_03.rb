=begin
入力例1
3
10 24 18 
出力例1
1
=end

n = gets.to_i
a = gets.split.map(&:to_i)

res = 0
0.upto(n - 3) do |x|
  (x + 1).upto(n - 2) do |y|
    next if a[x] > a[y]
    (y + 1).upto(n - 1) do |z|
      next if a[y] < a[z]
      res += 1
    end
  end
end
puts res

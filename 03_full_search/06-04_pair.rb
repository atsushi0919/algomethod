=begin
N 個の文字列の中に同じ 2 つの文字列があるか判定するプログラムを作成してください。

入力例1
3
algo
algo
method 
出力例1
Yes 
=end

n = gets.to_i
a = n.times.map { gets.chomp }
f = false
0.upto(n - 2) do |i|
  (i + 1).upto(n - 1) do |j|
    if a[i] == a[j]
      f = true
      break
    end
  end
  break if f
end
puts f ? "Yes" : "No"

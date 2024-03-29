=begin
L 以上 R 以下の整数の中から
1 の位が等しい異なる 2 つの整数を選ぶ方法は何通りあるか求めるプログラムを作成してください。

入力例1
14 25
出力例1
2
条件を満たす方法は以下の 2 通りです。

14 と 24 を選ぶ
15 と 25 を選ぶ

入力例2
1 10
出力例2
0
=end

l, r = gets.split.map(&:to_i)

res = 0
l.upto(r - 1) do |i|
  (i + 10).step(r, 10) { res += 1 }
end
puts res

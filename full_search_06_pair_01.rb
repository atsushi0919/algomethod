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
=begin
整数 N, KN,K と NN 個の整数 A_0A 
0
​
 , \cdots⋯, A_{N-1}A 
N−1
​
  が与えられます。
和が KK 以下となるように NN 個の整数から異なる 22 つの数を選ぶ方法は何通りあるか数えるプログラムを作成してください。

入力
入力は以下の形式から与えられます。

N \ KN K
A_0 \ \cdots \ A_{N-1}A 
0
​
  ⋯ A 
N−1
​
 
また、入力される値は以下の制約をみたします。

NN は 11 以上 100100 以下の整数
KK は 22 以上 200200 以下の整数
A_0, \cdots, A_{N-1}A 
0
​
 ,⋯,A 
N−1
​
  は 11 以上 100100 以下の整数
出力
答えを出力してください。

入出力例
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
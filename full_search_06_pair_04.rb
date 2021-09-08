=begin
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

=begin
整数 NN と NN 個の文字列 S_0S 
0
​
 , \cdots⋯, S_{N-1}S 
N−1
​
  が与えられます。
NN 個の文字列の中に同じ 22 つの文字列があるか判定するプログラムを作成してください。

入力
入力は以下の形式から与えられます。

NN
S_0S 
0
​
 
\vdots⋮
S_{N-1}S 
N−1
​
   
また、入力される値は以下の制約をみたします。

NN は 11 以上 100100 以下の整数
S_iS 
i
​
  は英子文字からなる長さ 11 以上 100100 の文字列 (0 \leq i \leq N-1)(0≤i≤N−1)
出力
同じ文字列が含まれていれば Yes を、含まれていなければ No を出力してください。

入出力例
入力例1
3
algo
algo
method 
出力例1
Yes 
=end

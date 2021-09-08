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

=begin
整数 N と N 個の整数 A_0A 
0
​
 , \cdots⋯, A_{N-1}A 
N−1
​
  が与えられます。
以下の条件をみたす整数の組 (x, y, z) の個数を求めるプログラムを作成してください。

A_x, A_y, \ A_zA 
x
​
 , A 
y
​
 , A 
z
​
  の最大値は A_yA 
y
​
  である。   
ただし、 0 \ \leq \ x \ \lt \ y \ \lt \ z \ \leq \ N-10 ≤ x < y < z ≤ N−1   
入力
入力は以下の形式から与えられます。

NN
A_0, \ \cdots, \ A_{N-1}A 
0
​
 , ⋯, A 
N−1
​
   
また、入力される値は以下の制約をみたします。

NN は 3 以上 100 以下の整数
A_iA 
i
​
  は 1 以上 1000 以下の整数 (0 \leq i \leq N-1)(0≤i≤N−1)
出力
答えを出力してください。

入出力例
入力例1
3
10 24 18 
出力例1
1 
(x, y, z) = (0, 1, 2)(x,y,z)=(0,1,2) は条件をみたします。
=end

=begin
整数 N と長さ N の文字列 S が与えられます。
以下の条件をみたす整数の組 (x,y) の個数を数えるプログラムを作成してください。

S の x 文字目と y 文字目は等しい。 
ただし、 0 ≤ x < y ≤ N−1 である。  
また、 S の先頭の文字を 0 文字目とする。

入力例1
4
baab 
出力例1
2  

条件をみたす組は (x, y) = =(0,3),(1,2) の 2 つです。
=end

n = gets.to_i
s = gets.chomp

res = 0
0.upto(n - 2) do |x|
  (x + 1).upto(n - 1) do |y|
    res += 1 if s[x] == s[y]
  end
end
puts res

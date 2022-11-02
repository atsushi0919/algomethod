{-
Q. 曜日計算
▷
提出一覧
解説
戻る
問題文
カメのアルルの住む世界では、私たちと違った暦が使われています。

1 年は 1 月から A 月までの A 個からなり、 1 つの月は常に 1 日から B 日までの B 個からなります。 また、曜日は C 種類あり、曜日 x の次の日の曜日は曜日 x+1 です (1≤x≤C−1) 。 ただし、曜日 C の次の日の曜日は曜日 1 です。

アルルの住む世界において、Y 
0
​
  年 M 
0
​
  月 D 
0
​
  日の曜日は曜日 X です。
アルルの住む世界における Y 
1
​
  年 M 
1
​
  月 D 
1
​
  日の曜日を答えてください。

入力
入力は次の形式で与えられます。

A \ B \ CA B C
Y_0 \ M_0 \ D_0 \ XY 
0
​
  M 
0
​
  D 
0
​
  X
Y_1 \ M_1 \ D_1Y 
1
​
  M 
1
​
  D 
1
​
 
また、入力される値は次の制約を満たします。

A,B,C は 1 以上 100 以下の整数
Y 
0
​
 ,Y 
1
​
  は 1 以上 3000 以下の整数
M 
0
​
 ,M 
1
​
  は 1 以上 A 以下の整数
D 
0
​
 ,D 
1
​
  は 1 以上 B 以下の整数
X は 1 以上 C 以下の整数
出力
答えを出力してください。

入出力例
入力例 1
12 31 7
2021 1 1 6
2021 1 3
出力例 1
1
この例では、1 年は 12 ヶ月で、曜日は 1 から 7 まで存在します。 2021 年 1 月 1 日は曜日 6 です。 同年 1 月 2 日は曜日 7 で、同年 1 月 3 日は曜日 1 のため、1 を出力します。

入力例 2
100 100 100
3000 100 100 1
1 1 1
出力例 2
2
-}
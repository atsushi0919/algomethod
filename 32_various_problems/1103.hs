{-
Q. できるだけ離したい
▷
提出一覧
解説
戻る
問題文
あなたはいくつかの電波塔を、なるべく互いの距離を離しながら設置しようとしています。

一直線上に、電波塔を設置可能な N 個の地点があります。 i(=0,1,…,N−1) 番目の地点の座標は x 
i
​
  で表されます。

今、これらの N 個の地点の中から、ちょうど K 箇所を選んで電波塔を設置します。 「最も距離の近い 2 つの電波塔の距離」として考えられる最大値を求めてください。

入力
入力は次の形式で与えられます。

N \ KN K
x_0 \ x_1 \ \ldots \ x_{N-1}x 
0
​
  x 
1
​
  … x 
N−1
​
 
また、入力される値は次の制約を満たします。

N は 2 以上 10 
5
  以下の整数
K は 2 以上 N 以下の整数
x 
i
​
  は 1 以上 10 
9
  以下の整数 (0≤i≤N−1)
x 
0
​
 <x 
1
​
 <⋯<x 
N−1
​
 
出力
答えを出力してください。

入出力例
入力例 1
5 2
1 3 5 8 10
出力例 1
9
両端に配置するのが最適です。

入力例 2
6 3
1 3 5 8 10 1000
出力例 2
9
座標 1, 10, 1000 の地点に設置するのが最適です。
このとき、答えとなる「最も距離の近い 2 つの電波塔の距離」は座標 1 と 10 の間の距離、すなわち 9 です。
-}
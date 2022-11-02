{-
Q. 累積最大値個数
▷
提出一覧
解説
戻る
問題文
N 個の正の整数からなる数列 A 
0
​
 ,A 
1
​
 ,…,A 
N−1
​
  が与えられます。

i=1,2,…,N に対して、次の問に答えてください。

数列 AA の先頭から ii 項について「最大値の個数」を求めてください。
つまり、M_i \ = \ \max(A_0, \ A_1, \ A_2, \ \dots, \ A_{i-1})M 
i
​
  = max(A 
0
​
 , A 
1
​
 , A 
2
​
 , …, A 
i−1
​
 ) としたとき、
A_0, \ A_1, \ A_2, \ \dots, \ A_{i-1}A 
0
​
 , A 
1
​
 , A 
2
​
 , …, A 
i−1
​
  の中に M_iM 
i
​
  が何個あるかを求めてください。
入力
入力は次の形式で与えられます。

NN
A_0 \ A_1 \ \ldots \ A_{N-1}A 
0
​
  A 
1
​
  … A 
N−1
​
 
また、入力される値は次の制約を満たします。

N は 1 以上 10 
5
  以下の整数
A 
i
​
  は 1 以上 10 
9
  以下の整数 (0≤i≤N−1)
出力
i=1,2,…,N に対する答えを一行ずつ出力してください。

入出力例
入力例 1
7
1 3 3 2 3 9 4
出力例 1
1
1
2
2
3
1
1
順に考えていきます。

max(1)=1 であり、1 の中に 1 は 1 個です
max(1,3)=3 であり、1,3 の中に 3 は 1 個です
max(1,3,3)=3 であり、1,3,3 の中に 3 は 2 個です
max(1,3,3,2)=3 であり、1,3,3,2 の中に 3 は 2 個です
max(1,3,3,2,3)=3 であり、1,3,3,2,3 の中に 3 は 3 個です
max(1,3,3,2,3,9)=9 であり、1,3,3,2,3,9 の中に 9 は 1 個です
max(1,3,3,2,3,9,4)=9 であり、1,3,3,2,3,9,4 の中に 9 は 1 個です
となります。これらを順に出力します。

入力例 2
5
2 2 2 2 2
出力例 2
1
2
3
4
5
すべての要素が等しく、すべての要素が最大値です。

入力例 3
3
1 2 3
出力例 3
1
1
1
最大値が毎回更新されていきます。

入力例 4
1
100
出力例 3
1
入力される値が 1 個だけの場合もあります。
-}
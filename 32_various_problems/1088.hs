-- Q. 同じ部屋にいた時間
-- https://algo-method.com/tasks/1088

{-
入力例 1
5 10
4 8
出力例 1
3
-}

main :: IO ()
main = do
  [sa, ta, sb, tb] <- map read . words <$> getContents

  print $ max 0 $ min ta tb - max sa sb


{-

inputN :: IO [Int]
inputN = map read . words <$> getLine

main = do
    [sa, ta] <- inputN
    [sb, tb] <- inputN
    print $ max 0 $ (min ta tb) - (max sa sb)


▷
提出一覧
解説
戻る
問題文
ある日、学生の A さんと B さんは同じ自習室を利用しました。

A さんは
時刻 sA から時刻 tA までの間自習室を利用しました。
また、 B さんは
時刻 sB から時刻 tB までの間自習室を利用しました。

2 人が同時に自習室を利用した時間の長さを答えてください。

入力
入力は次の形式で与えられます。

s_A \ t_As 
A
​
  t 
A
​
 
s_B \ t_Bs 
B
​
  t 
B
​
 
また、入力される値は次の制約を満たします。

sA ,tA ,sB, tB は 1 以上 100 以下の整数

tA は sA より大きい
tB は sB より大きい

出力
答えを出力してください。

入出力例
入力例 1
5 10
4 8
出力例 1
3

A さんは時刻 5 から時刻 10 まで自習室を利用しました。 B さんは時刻 4 から時刻 8 まで自習室を利用しました。
二人が同時に自習室を利用したのは時刻 5 から時刻 8 までなので、その時間の長さ 3 を出力します。

入力例 2
2 20
20 32
出力例 2
0

時刻 20 で A さんは自習室を退出し、B さんは自習室に入室しました。 そのため、2 人が同じ部屋にいた時間の長さは 0 です。

-}
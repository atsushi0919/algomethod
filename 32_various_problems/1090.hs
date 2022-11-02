-- Q. 市松模様
-- https://algo-method.com/tasks/1090

toInt :: String -> Int
toInt x = read x :: Int

getColor :: Int -> Int -> String
getColor a b = if even $ a + b then "Black" else "White"

main :: IO ()
main = do
  [h, w, p, q] <- map toInt . words <$> getLine

  putStrLn $ getColor p q




{-
問題文
H×W のマス目を市松模様に塗りたいとします。
具体的には次のように塗ります。 なおここで、上から x 行目 (0 始まり)、左から y 列目 (0 始まり) のマスを (x,y) と表すことにします。

各マスを「黒色」か「白色」のいずれかに塗る
マス (0,0) は黒色に塗る
どの隣接する 2 マスも、一方が黒色で他方が白色になるように塗る
この条件を満たすように各マスの色を塗ったとき、マス (p,q) の色が何色になるかを答えてください。

image

入力
入力は次の形式で与えられます。

H \ W \ p \ q
H W p q
また、入力される値は次の制約を満たします。

H,W は 1 以上 1000 以下の整数
p は 0 以上 H−1 以下の整数
q は 0 以上 W−1 以下の整数
出力
マスの色が黒なら Black, 白なら White と出力してください。

入出力例
入力例 1
4 5 0 0
出力例 1
Black
条件により、マス (0,0) は黒色で塗ります。

入力例 2
4 5 3 4
出力例 2
White
マス (3,4) は上図の右下隅です。図の通り白色で塗ります。
-}
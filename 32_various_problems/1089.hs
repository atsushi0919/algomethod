-- Q. 4 と 6 の Fizz Buzz
-- https://algo-method.com/tasks/1089

fizzbuzz :: Int -> String
fizzbuzz x
  | isFizz && isBuzz = "FizzBuzz"
  | isFizz = "Fizz"
  | isBuzz = "Buzz"
  | otherwise = show x
  where
    isFizz = x `mod` 4 == 0
    isBuzz = x `mod` 6 == 0

main :: IO ()
main = do
  n <- readLn :: IO Int

  let results = map fizzbuzz [1..n]

  mapM_ putStrLn results


{-

main :: IO ()
main = do
  n <- getInt

  let ans = map solve [1 .. n]

  putStrLnVertically ans

solve :: Int -> String
solve n = if ret == "" then show n else ret
  where
    fizz = if n `mod` 4 == 0 then "Fizz" else ""
    buzz = if n `mod` 6 == 0 then "Buzz" else ""
    ret = fizz ++ buzz

-- input functions

getInt :: IO Int
getInt = readLn

-- print functions

putStrLnVertically :: [String] -> IO ()
putStrLnVertically = mapM_ putStrLn

*****

toInt :: String -> Int
toInt x = read x ::Int

toStr :: Int -> String
toStr x = show x ::String

fizzbuzz :: Int -> String
fizzbuzz x
    | isFizz && isBuzz = "FizzBuzz"
    | isFizz = "Fizz"
    | isBuzz = "Buzz"
    | otherwise = toStr x
    where
        isFizz = x `mod` 3 == 0
        isBuzz = x `mod` 5 == 0

main :: IO()
main = do
    inputStr <- getLine
    let num = toInt inputStr
    putStrLn(fizzbuzz num)


提出一覧
解説
戻る
問題文
正の整数 N が与えられます。

各整数 n=1,2,…,N に対して、順に以下の処理をしてください。

n が 4 の倍数ならば、Fizz と一行に出力する
n が 6 の倍数ならば、Buzz と一行に出力する
ただし、n が 4 の倍数でも 6 の倍数でもあるならば、FizzBuzz と一行に出力する
それ以外の場合は、そのままの整数 n を一行に出力する
　

入力
入力は次の形式で与えられます。

NN
また、入力される値は次の制約を満たします。

N は 1 以上 100 以下の整数
出力
答えを出力してください。

入出力例
入力例 1
15
出力例 1
1
2
3
Fizz
5
Buzz
7
Fizz
9
10
11
FizzBuzz
13
14
15
-}
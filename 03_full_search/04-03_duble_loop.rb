# 1 以上 N 以下の整数の中で約数をちょうど K 個持つ数の個数を調べるプログラムを作成してください。

INPUT1 = <<~"EOS"
  7 15
EOS
OUTPUT1 = <<~"EOS"
  4
EOS

INPUT2 = <<~"EOS"
  15 15
EOS
OUTPUT2 = <<~"EOS"
  0
EOS

n, k = gets.split.map(&:to_i)
puts (n..k).count { |num| num.to_s == num.to_s.reverse }

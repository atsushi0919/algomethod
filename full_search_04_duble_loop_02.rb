# 1 以上 N 以下の整数の中で約数をちょうど K 個持つ数の個数を調べるプログラムを作成してください。

INPUT1 = <<~"EOS"
  8 4
EOS
OUTPUT1 = <<~"EOS"
  2
EOS
# 1 以上 8 以下の整数の中で約数を 4 個持つ数は 6, 8 の 2 つです。

def get_divisor(num)
  d, q = [], []
  (1..(num ** 0.5).to_i).each do |div|
    if num % div == 0
      d << div
      q << num / div
    end
  end
  d | q.reverse
end

n, k = gets.split.map(&:to_i)
puts 1.upto(n).count { |num| get_divisor(num).length == k }

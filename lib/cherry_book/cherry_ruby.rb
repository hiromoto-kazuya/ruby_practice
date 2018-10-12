# ブロック処理 -> 偶数だけ10倍して足し算
# numbers = [1,2,3,4]
# sum = 0
# numbers.each do |n|
#   sum_value = n.even? ? n * 10 : n
#   sum += sum_value
# end
# p sum

# 改行を入れてコンパクトなブロック処理
# numbers = [1,2,3,4]
# sum = 0
# numbers.each { |n| sum += n }
# p sum


#【map / collect】
# numbers = [1,2,3,4,5]
# new_numbers = []
# numbers.each { |n| new_numbers << n * 10 }
# p new_numbers

# 上記をmap（エイリアスメソッド collect）で書き換えると、、、
# numbers = [1,2,3,4,5]
# new_numbers = numbers.map { |n| n * 10 }
# p new_numbers

#【select(エイリアス find_all) / reject】
# ブロックを評価し、その戻り値が真の要素を集めた配列を返す
# 偶数の値だけをselectして配列を返す
# numbers = [1,2,3,4,5,6,7,8,9,10]
# even_numbers = numbers.select { |n| n.even? }
# p even_numbers

# rejectはその逆、戻り値が疑の要素を集める
# 3の倍数を除外して配列を作る
# numbers = [1,2,3,4,5,6,7,8,9,10]
# non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
# p non_multiples_of_three

#【inject(reduce)】
# 畳み込み演算を行う
# numbers = [1,2,3,4]
# sum = 0
# numbers.each { |n| sum += n }
# p sum

# 上記をinjectで書き換えると、、、
# numbers = [1,2,3,4]
# sum = numbers.inject(5) { |result, n| result + n }
# p sum

# 文字列に対しても使える
# strings = %w(a b c d e f g h i j k l m n)
# a = strings.inject("start!") { |result, s| result + s }
# p strings
# p a

#【&とシンボルを使って簡潔に！】
# a = ['ruby', 'java', 'perl'].map { |s| s.upcase }
# p a

# 上記を書き換えると、、、
# b = ['ruby', 'java', 'perl'].map(&:upcase)
# p b


# 【4.5.2】範囲オブジェクトを使った判定

#不等号を使う場合
# def liquid?(temperature)
#   0 <= temperature && temperature < 100
# end
# p liquid?(-1)
# p liquid?(0)
# p liquid?(99)
# p liquid?100

# 範囲オブジェクトを使う場合
# def liquid?(temperature)
#   (0...100).include?(temperature)
# end
# p liquid?(-1)
# p liquid?(0)
# p liquid?(99)
# p liquid?100

# 【4.5.3】case文と範囲オブジェクト
# def charge(age)
#   case age
#   when 0..5
#     0
#   when 6..12
#     300
#   when 13..18
#     600
#   else
#     1000
#   end
# end
# puts charge(3)
# puts charge(7)
# puts charge(15)
# puts charge(24)

# 【4.5.4】値が連続する配列
# a = (1..5).to_a
# b = ('a'..'e').to_a
# c = ('bad'..'bag').to_a
# 下記、splat展開(*を使って複数の値を配列に展開する)
# d = [*1..5]
# puts a,b,c
# puts d

# 【4.5.5】繰り返し処理 stepメソッド
# 引数によって値を増やす感覚を指定できる
# numbers = []
# (1..10).step(2) { |n| numbers << n }
# puts numbers

# rjust（第1引数 桁数、第2引数 何で埋めるか）
# a = '0'.rjust(5)
# b = '0'.rjust(5,'0')
# c = '0'.rjust(5,'_')
# p a,b,c

# 【様々な要素の取得方法】
# 2つめから3つめ
# a = [1,2,3,4,5]
# p a[1,3]

# 欲しい要素の添え字のみを指定して取得
# a = [1,2,3,4,5]
# p a.values_at(0,2,4,6)

# 配列の長さ-1で最後の要素を取得
# a = [1,2,3,4,5]
# p a[a.size - 1]
# 上と同様
# p a[-1]

# 前 / 後ろからn個の要素
# a = [1,2,3,4,5]
# p a.first(2)
# p a.last(2)

# 2つめから3要素分を100で置き換える
# a = [1,2,3,4,5]
# a[1,3] = 100
# p a

# <<ではなくpushメソッドなら複数の値を配列に追加できる
# a = []
# a.push(1)
# a.push(2,3)
# p a

# 【4.7.4】配列の和集合、差集合、積集合
# 和集合 重複の内容に配列を合わせる
# a = [1,2,3]
# b = [3,4,5]
# p a | b

# 差集合 左の配列から右の配列の要素を覗く
# a = [1,2,3]
# b = [3,4,5]
# p a - b

# 積集合 → 共通要素を返す
# a = [1,2,3]
# b = [3,4,5]
# p a & b

# 本格的に集合を扱う場合はSetクラスを用いる
# require 'set'
# a = Set.new([1,2,3])
# b = Set.new([3,4,5])
# p a | b
# p a - b
# p a & b

# 多重代入で配列として受け取る
# e, *f = 100,200,300
# p e
# p f

# splat展開で、配列を複数の引数に展開してから渡す
# a = []
# b = [2,3]
# a.push(1)
# a.push(*b)
# p a

# 【4.7.7】メソッドの可変長引数
# def greeting(*names)
#   "#{names.join('と')}、こんにちは！"
# end
# p greeting('田中さん')
# p greeting('田中さん','鈴木さん')
# p greeting('田中さん','鈴木さん', '佐藤さん')

# 【4.7.11】文字列を配列に変換する
# charsメソッド→1文字ずつ配列の要素に分解する
# p 'Ruby'.chars
# splitメソッド→引数で渡した区切文字で文字列を配列に分割
# p 'Ruby,Java,Perl,PHP'.split(',')

# 【4.8.1】添え字付きの繰り返し処理
# ブロック引数のiには 0,1,2...と要素の添え字が入る
# fruits = ['apple', 'orange', 'melon']
# fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }

# mapとして処理しつつ添え字も受け取る
# fruits = ['apple', 'orange', 'melon']
# p fruits.map.with_index { |fruit,i| "#{i}: #{fruit}"}

# 名前に"a"を含み、なおかつ添え字が奇数である要素を削除する
# fruits = ['apple', 'orange', 'melon']
# p fruits.delete_if.with_index { |fruit,i| fruit.include?('a') && i.odd? }

# 【4.8.3】添え字を0以外から始める
# with_indexメソッドに引数を渡してやると良い
# fruits = ['apple', 'orange', 'melon']
# fruits.each.with_index(1) { |fruit,i| puts "#{i}: #{fruit}" }
# p fruits.map.with_index(10) { |fruit,i| "#{i}: #{fruit}" }

# 【4.9】様々な繰り返し処理

# timesメソッド
# sum = 0
# 5.times { |n| sum += n }
# p sum

# uptoメソッド
# a = []
# 10.upto(14) { |n| a << n }
# p a

# downtoメソッド
# a = []
# 14.downto(10) { |n| a << n }
# p a

# stepメソッド
# 1から10まで2つずつ増やす処理
# a = []
# 1.step(10,2) { |n| a << n }
# p a

# redoメソッド
# はいと答えるまで同じ質問を繰り返す
# foods = ['ピーマン','トマト','セロリ']
# foods.each do |food|
#   print "#{food}は好きですか?"
#   # sampleは配列からランダムに1要素を取得するメソッド
#   answer = ['はい','いいえ'].sample
#   puts answer
#
#   # はいと答えなければもう一度聞く
#   redo unless answer == 'はい'
# end

# 最大2回聞き返す
# foods = ['ピーマン','トマト','セロリ']
# count = 0
# foods.each do |food|
#   print "#{food}は好きですか?"
#   # sampleは配列からランダムに1要素を取得するメソッド
#   answer = ['はい','いいえ'].sample
#   puts answer
#   count += 1
#   # はいと答えなければもう一度聞く
#   redo if answer != 'はい' && count < 2
#   count = 0
# end

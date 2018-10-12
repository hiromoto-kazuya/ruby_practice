# 10未満の自然数のうち、3もしくは5の倍数になっているものは
# 3, 5, 6, 9の4つがあり, これらの合計は 23 になる。
# 同じようにして、1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ。
# numbers = (1...1000).map { |n| n if n % 3 == 0 || n % 5 == 0 }
# numbers.delete(nil)
# # compactを使えば、メソッドチェーン的にnilをのぞいてくれた
# p numbers.sum
#
# p (1...1000).select { |a| ( a % 3 == 0 ) || ( a % 5 == 0 ) }.sum



# 2つの変数を使って役職順に並び替える
# classes = ["社長","専務","部長","課長","係長"]
#
# members = [
#   { name: "吉田麻也", status: "課長"},
#   { name: "本田圭佑", status: "部長"},
#   { name: "香川真司", status: "専務"},
#   { name: "岡崎慎司", status: "係長"},
#   { name: "ハリルホジッチ", status: "社長"},
# ]

# 回答1
# n = 0
# while n < classes.size
#   p members.select {|member| member[:status] == classes[n]}
#   n += 1
# end

# 回答2
# members.sort_by!{ |member| classes.find_index(member[:status]) }
#
# puts members

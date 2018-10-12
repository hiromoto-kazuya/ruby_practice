class Number
  CONSTANT_NUMBER =100
end

# 定数を外から変更できないようフリーズしている
Number.freeze

#定数の呼び出し、変更は[Class名::定数名)
Number::CONSTANT_NUMBER = 0

puts Number::CONSTANT_NUMBER

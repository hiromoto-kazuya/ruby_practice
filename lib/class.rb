class Cat
  # 外部から@nameを読み書きするメソッドが自動で定義される
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

cat = Cat.new('koko')
puts cat.name
cat.name = 'nemu'
puts cat.name

class Dog
  # 読み取り専用のメソッドを自動定義（変更はできない）
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

dog = Dog.new('texira')
puts dog.name


class User
  # initializeだけだとインスタンス変数は外部からの参照・変更が効かない
  # インスタンス変数の値を読み書きするメソッドのことを「アクセサメソッド」
  def initialize(name)
    @name = name
  end
  # 外部からインスタンス変数を参照するためのメソッド
  def name
    @name
  end
  #外部からインスタンス変数を変更するためのメソッド
  def name=(value)
    @name = value
  end
end

# nameメソッドを定義したから参照できる
user = User.new('kazuya')
puts user.name

# name=メソッドを定義したからuser.nameに値を代入できる
user.name = 'hiromoto'
puts user.name

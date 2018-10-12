require 'minitest/autorun'
require './lib/convert_hash_syntax'

class ConvertHahSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name=> 'Alice',
        :age=>20,
        :gender  => :female
      }
    TEXT
    exepected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal exepected, convert_hash_syntax(old_syntax)
  end
end

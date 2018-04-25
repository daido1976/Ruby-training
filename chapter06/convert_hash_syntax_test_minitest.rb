require 'minitest/autorun'
require './chapter06/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name => 'Daido',
        :age=>28,
        :gender  =>  :male
      }
    TEXT

    expected = <<~TEXT
      {
        name: 'Daido',
        age: 28,
        gender: :male
      }
    TEXT

    assert_equal expected, convert_hash_syntax(old_syntax)
  end
end

require 'minitest/autorun'
require './chapter10/effects'

class EffectsTest < Minitest::Test
  def test_reverse
    effect = Effects.reverse
    assert_equal 'lreP si !nuf', effect.call('Perl is fun!')
  end

  def test_echo
    effect = Effects.echo(2)
    assert_equal 'PPeerrll iiss ffuunn!!', effect.call('Perl is fun!')
    effect = Effects.echo(3)
    assert_equal 'PPPeeerrrlll iiisss fffuuunnn!!!', effect.call('Perl is fun!')
  end

  def test_loud
    effect = Effects.loud(2)
    assert_equal 'PERL!! IS!! FUN!!!', effect.call('Perl is fun!')
    effect = Effects.loud(3)
    assert_equal 'PERL!!! IS!!! FUN!!!!', effect.call('Perl is fun!')
  end
end

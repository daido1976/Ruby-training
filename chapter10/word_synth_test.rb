require 'minitest/autorun'
require './chapter10/word_synth'
require './chapter10/effects'

class WordSynthTest < Minitest::Test
  def test_play_without_effects
    synth = WordSynth.new
    assert_equal 'Perl is fun!', synth.play('Perl is fun!')
  end

  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal 'lreP si !nuf', synth.play('Perl is fun!')
  end

  def test_play_with_many_effects
    synth = WordSynth.new
    synth.add_effect(Effects.echo(2))
    synth.add_effect(Effects.loud(3))
    synth.add_effect(Effects.reverse)
    assert_equal '!!!LLRREEPP !!!SSII !!!!!NNUUFF', synth.play('Perl is fun!')
  end
end

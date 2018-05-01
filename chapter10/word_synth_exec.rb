require './chapter10/word_synth'
require './chapter10/effects'

# エフェクトなし
synth = WordSynth.new
p synth.play('Perl is fun!') #=> "Perl is fun!"

# リバースエフェクトのみを適用
synth = WordSynth.new
synth.add_effect(Effects.reverse)
p synth.play('Perl is fun!') #=> "lreP si !nuf"

# 全エフェクトを一度に適用
synth = WordSynth.new
synth.add_effect(Effects.echo(2))
synth.add_effect(Effects.loud(3))
synth.add_effect(Effects.reverse)
p synth.play('Perl is fun!') #=> "!!!LLRREEPP !!!SSII !!!!!NNUUFF"

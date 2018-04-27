require './chapter10/word_synth'
require './chapter10/effects'

RSpec.describe WordSynth do
  let(:synth) { WordSynth.new }
  let(:play_result) { synth.play('Perl is fun!') }

  context 'エフェクトを全く使わない場合' do
    it 'エフェクトはかからない' do
      expect(play_result).to eq 'Perl is fun!'
    end
  end

  context '単一のエフェクトをかける場合' do
    before do
      synth.add_effect(Effects.reverse)
    end

    it '単一のエフェクトのみがかかる' do
      expect(play_result).to eq 'lreP si !nuf'
    end
  end

  context '複数のエフェクトをかける場合' do
    before do
      synth.add_effect(Effects.echo(2))
      synth.add_effect(Effects.loud(3))
      synth.add_effect(Effects.reverse)
    end

    it '追加した順番にエフェクトがかかる' do
      expect(play_result).to eq '!!!LLRREEPP !!!SSII !!!!!NNUUFF'
    end
  end
end

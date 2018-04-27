require './chapter10/effects'

RSpec.describe Effects do
  let(:effect_result) { effect.call('Perl is fun!') }

  describe '.reverse' do
    context 'リバースをかけた場合' do
      let(:effect) { Effects.reverse }
      it '各単語の文字列をを逆順にする' do
        expect(effect_result).to eq 'lreP si !nuf'
      end
    end
  end

  describe '.echo' do
    context 'エコーを2レベルかけた場合' do
      let(:effect) { Effects.echo(2) }
      it '各文字を2回ずつ繰り返す' do
        expect(effect_result).to eq 'PPeerrll iiss ffuunn!!'
      end
    end

    context 'エコーを3レベルかけた場合' do
      let(:effect) { Effects.echo(3) }
      it '各文字を3回ずつ繰り返す' do
        expect(effect_result).to eq 'PPPeeerrrlll iiisss fffuuunnn!!!'
      end
    end
  end

  describe '.loud' do
    context 'ラウドを2レベルかけた場合' do
      let(:effect) { Effects.loud(2) }
      it '全ての文字を大文字に変換し、各単語の末尾に2つ"!"をつける' do
        expect(effect_result).to eq 'PERL!! IS!! FUN!!!'
      end
    end

    context 'ラウドを3レベルかけた場合' do
      let(:effect) { Effects.loud(3) }
      it '全ての文字を大文字に変換し、各単語の末尾に3つ"!"をつける' do
        expect(effect_result).to eq 'PERL!!! IS!!! FUN!!!!'
      end
    end
  end
end

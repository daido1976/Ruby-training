require './chapter08/deep_freezable'

RSpec.describe DeepFreezable do
  include DeepFreezable

  let(:array) { ['Japan', 'US', 'India'] }
  let(:hash) { { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' } }

  describe '#deep_freeze' do
    it '配列自身(array)と配列の各要素(element)がfreezeされる' do
      expect(deep_freeze(array).frozen?).to be_truthy
      expect(deep_freeze(array).all? { |element| element.frozen? }).to be_truthy
    end

    it 'ハッシュ自身(hash)とハッシュの各要素(key,value)がfreezeされる' do
      expect(deep_freeze(hash).frozen?).to be_truthy
      expect(deep_freeze(hash).all? { |key, value| key.frozen? && value.frozen? }).to be_truthy
    end
  end
end

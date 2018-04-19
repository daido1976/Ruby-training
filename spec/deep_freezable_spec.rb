require './chapter08/deep_freezable'

RSpec.describe DeepFreezable do
  include DeepFreezable
  
  let(:countries) { ['Japan', 'US', 'India'] }
  let(:currencies) { { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' } }

  describe '#deep_freeze' do
    it '配列自身(countries)と配列の各要素(country)がfreezeされる' do
      expect(deep_freeze(countries).frozen?).to be_truthy
      expect(deep_freeze(countries).all? { |country| country.frozen? }).to be_truthy
    end

    it 'ハッシュ自身(currencies)とハッシュの各要素(key,value)がfreezeされる' do
      expect(deep_freeze(currencies).frozen?).to be_truthy
      expect(deep_freeze(currencies).all? { |key, value| key.frozen? && value.frozen? }).to be_truthy
    end
  end
end

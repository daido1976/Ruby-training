require './chapter06/convert_hash_syntax'

RSpec.describe '#convert_hash_syntax' do
  let(:old_syntax) {
    <<~TEXT
    {
      :name => 'Daido',
      :age=>28,
      :gender  =>  :male
    }
    TEXT
  }

  let(:new_syntax) {
    <<~TEXT
    {
      name: 'Daido',
      age: 28,
      gender: :male
    }
    TEXT
  }

  it 'ハッシュ記法を古い記法から新しい記法に変換する' do
    expect(convert_hash_syntax(old_syntax)).to eq new_syntax
  end
end

require './chapter06/convert_hash_syntax'

RSpec.describe 'convert_hash_syntax' do
  it 'convert old_syntax to expected' do
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
    expect(expected).to eq convert_hash_syntax(old_syntax)
  end
end

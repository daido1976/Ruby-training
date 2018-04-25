require './chapter09/regexp_checker'

RSpec.describe RegexpChecker do
  let(:regexp_checker) { RegexpChecker.new }

  describe '#check_regexp' do
    before { regexp_checker.stub(:input_text).and_return('123abc456def789') }

    context '入力した文字列が正規表現にマッチしている場合' do
      before { regexp_checker.stub(:input_regexp).and_return(/\d\d\d/) }
      it 'マッチした文字列をカンマ区切りで返す' do
        expect { regexp_checker.check_regexp }.to output("Matched: 123, 456, 789\n").to_stdout
      end
    end

    context '入力した文字列が正規表現にマッチしていない場合' do
      before { regexp_checker.stub(:input_regexp).and_return(/z+/) }
      it '"Nothing matched."という文字列を返す' do
        expect { regexp_checker.check_regexp }.to output("Nothing matched.\n").to_stdout
      end
    end
  end
end

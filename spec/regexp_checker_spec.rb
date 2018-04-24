require './chapter09/regexp_checker'

RSpec.describe RegexpChecker do
  let(:regexp_checker) { RegexpChecker.new }

  describe '#check_regexp' do
    it '正規表現にマッチしていれば、マッチした文字列をカンマ区切りで返す' do
      regexp_checker.stub(:input_text).and_return('123abc456def789')
      regexp_checker.stub(:input_regexp).and_return(/\d\d\d/)
      expect { regexp_checker.check_regexp }.to output("Matched: 123, 456, 789\n").to_stdout
    end

    it '正規表現にマッチしていなければ、"Nothing matched."という文字列を返す' do
      regexp_checker.stub(:input_text).and_return('123abc456def789')
      regexp_checker.stub(:input_regexp).and_return(/z+/)
      expect { regexp_checker.check_regexp }.to output("Nothing matched.\n").to_stdout
    end
  end
end

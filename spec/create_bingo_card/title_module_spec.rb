require './create_bingo_card/title_module.rb'

describe 'TitleModule' do
  before { $stdout = StringIO.new }
  let(:test_obj) { Class.new { extend TitleModule } }
  let(:title) {}

  describe '#title_output' do
    context '正常系' do
      context 'case1: 引数が空白文字以外で１文字の場合' do
        let(:title) { 'B' }

        it '引数の文字列がパイプで区切られて1文字表示されること' do
          test_obj.title_output(title)
          expect($stdout.string).to eq "|  B |\n"
        end
      end
      context 'case2: 引数が空白文字以外で2文字の場合' do
        let(:title) { 'BI' }

        it '引数の文字列がパイプで区切られて2文字表示されること' do
          test_obj.title_output(title)
          expect($stdout.string).to eq "|  B |  I |\n"
        end
      end
    end

    context '異常系' do
      context 'case3: 引数が空文字の場合' do
        let(:title) { '' }

        it 'エラーメッセージが返却されること' do
          expect(test_obj.title_output(title)).to eq '引数は１文字以上の文字を入力してください。'
        end
      end
    end
  end
end

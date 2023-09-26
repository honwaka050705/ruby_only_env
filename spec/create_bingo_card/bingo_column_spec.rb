require './create_bingo_card/bingo_column.rb'

# 機能テスト
RSpec.describe BingoColumn do
  describe '#initialize' do
    let(:test_obj) { BingoColumn.new }

    it 'hash型で返却されること' do
      expect(test_obj.cols.is_a?(Hash)).to be true
    end

    it '要素が５個返却されること' do
      expect(test_obj.cols.size).to eq 5  
    end

    it 'hash内の配列要素が全て一意であること' do
      test_obj.cols.each do |key, line|
        # uniqメソッドを実行して重複がある場合要素数が減少する。
        expect(line.uniq.size).to eq 5        
      end
    end
  end
end

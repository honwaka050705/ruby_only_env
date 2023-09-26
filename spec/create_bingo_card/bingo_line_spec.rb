require './create_bingo_card/bingo_line'

# 機能テスト
RSpec.describe BingoLine do
  before { $stdout = StringIO.new }
  let(:test_obj) { BingoLine.new('BINGO') }
  let(:std_line_reg) { /\|\s.\d\s\|\s.\d\s\|\s.\d\s\|\s.\d\s\|\s.\d\s\|/ }
  let(:free_line_reg) { /\|\s.\d\s\|\s.\d\s\|\s.\s\s\|\s.\d\s\|\s.\d\s\|/ }

  describe '#output_lines' do
    context 'ビンゴカード1, 2, 4, 5行目フォーマット確認(タイトル含まない)' do
      it '`| (数値(1-2桁)) |`の形式で全て数値が出力されていること' do
        test_obj.output_lines
        lines = $stdout.string.split("\n")

        lines.each_with_index do |line, i|
          next if i == 2
          expect(line).to match(std_line_reg)
        end
      end
    end

    context 'ビンゴカード3行目フォーマット確認(タイトル含まない)' do
      it '`| (数値(1-2桁)) |`の形式で3列目空白でそれ以外の列に数値が出力されていること' do
        test_obj.output_lines
        lines = $stdout.string.split("\n")

        expect(lines[2]).to match(free_line_reg)   
      end
    end
  end
end

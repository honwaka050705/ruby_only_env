require './create_bingo_card/bingo_card.rb'

# 機能テスト
RSpec.describe 'BingoCard' do
  before { $stdout = StringIO.new }
  let(:test_obj) { BingoCard.new }
  let(:title) { '|  B |  I |  N |  G |  O |' }
  describe '#create' do
    it 'タイトル行が"|  B |  I |  N |  G |  O |"と表示されること' do
      test_obj.create
      lines = $stdout.string.split("\n")
      expect(lines).to include title
    end

    # 数字行の詳細なテストはbingo_line_spec.rbで実施したので行数のみ実施。
    it '数字の行が５行表示されること' do
      test_obj.create
      lines = $stdout.string.split("\n")
      lines.delete_at(0)
      expect(lines.size).to eq 5
    end
  end
end

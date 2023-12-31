require './create_bingo_card/title_module'
require './create_bingo_card/bingo_line'

class BingoCard
  include TitleModule

  HEAD_TITLE = 'BINGO'

  def create
    title_output(HEAD_TITLE)
    BingoLine.new(HEAD_TITLE).output_lines
  end
end

card = BingoCard.new
card.create

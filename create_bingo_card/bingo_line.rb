require './create_bingo_card/bingo_column'

class BingoLine
  include BingoDecoration

  FREE_SPACE = {N: 2}

  def initialize(title)
    @title = title
    @lines = []
  end

  def output_lines
    @col = BingoColumn.new
    line = '|'
    5.times.each do |i|
      print create_line(i)
    end
  end

  private

  def create_line(line_num)
    line = '|'
    
    @title.each_char do |c|
      val = (c == 'N' && line_num == 2) ? '' : @col.cols[c.to_sym][line_num].to_s 
      line << " #{val.rjust(2, ' ')} |"
    end
    line << "\n"

    line
  end
end
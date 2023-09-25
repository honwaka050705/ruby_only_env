require './create_bingo_card/bingo_decoration'

module Title
  include BingoDecoration

  def title_output(title)
    print '|'
    title.each_char {|t| print add_pipe_at_end(t) }
    print "\n"
  end
end

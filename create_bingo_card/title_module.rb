require './create_bingo_card/bingo_decoration_module'

module TitleModule
  include BingoDecorationModule

  def title_output(title)
    return '引数は１文字以上の文字を入力してください。' if title.empty?
    
    print '|'
    title.each_char {|t| print add_pipe_at_end(t) }
    print "\n"
  end
end

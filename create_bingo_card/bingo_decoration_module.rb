module BingoDecorationModule
  def decorate_line()
    "| #{}"
  end

  def add_pipe_at_end(val)
    " #{val.rjust(2, ' ')} |"
  end
end
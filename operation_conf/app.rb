# 環境構築の動作確認用コード
require './operation_conf/hello_output'

class App
  include HelloOutput

  def hello_ruby
    puts 'Hello Ruby'
    hello
  end
end

app = App.new
app.hello_ruby

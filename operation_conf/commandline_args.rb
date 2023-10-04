# $0：コマンド名
puts "$0:#{$0}"

ARGV.each_with_index do |arg, i|
  puts "ARGS[#{i}]: #{arg}"
end
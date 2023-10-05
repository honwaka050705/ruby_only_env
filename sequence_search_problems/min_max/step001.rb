# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_minmax_step0

nums = gets.chomp.split(" ").map(&:to_i)
if nums.size != 2
  puts"2値で入力してください。" 
  return
end

nums.sort!.reverse!

puts nums.join(" ")

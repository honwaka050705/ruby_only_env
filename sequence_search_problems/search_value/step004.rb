# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_search_value_boss

n = gets.to_i
nums = gets.chomp.split(" ")
k = gets.to_i

nums.each_with_index do |num, i|
  puts i + 1 if num.to_i == k
end

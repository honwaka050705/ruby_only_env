# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_search_value_step1

n = gets.to_i
nums = gets.chomp.split(" ")
k = gets.to_i

indx = nums.index(k.to_s)

puts indx.nil? ? 0 : indx + 1

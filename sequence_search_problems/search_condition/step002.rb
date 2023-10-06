# 奇数の探索(最後に現れる奇数)
# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_search_condition_step1

n = gets.to_i
nums = gets.chomp.split(" ")

puts nums.rindex {|num| num.to_i % 2 == 1 } + 1

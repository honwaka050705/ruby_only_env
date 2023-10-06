# 偶数の探索(最初に現れる偶数)
# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_search_condition_step0

n = gets.to_i
nums = gets.chomp.split(" ")

puts nums.index {|num| num.to_i % 2 == 0 } + 1

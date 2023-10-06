# 条件付き最小値
# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_search_condition_step2

n = gets.to_i
nums = gets.chomp.split(" ").map(&:to_i)
k = gets.to_i

more_bigs = []
nums.each {|n| more_bigs << n if n > k }

puts more_bigs.min

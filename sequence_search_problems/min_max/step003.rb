# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_minmax_boss

n = gets.to_i
nums = gets.chomp.split(" ").map(&:to_i)

max_min = [nums.max]
max_min << [nums.min]

puts max_min.join(" ")

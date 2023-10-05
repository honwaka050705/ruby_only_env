# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_minmax_step1

nums = gets.chomp.split(" ").map(&:to_i)
if nums.size != 10
  puts"10個の値で入力してください。" 
  return
end

max_min = [nums.max]
max_min << nums.min

puts max_min.join(" ")

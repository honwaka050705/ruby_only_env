# 各列の数字を生成
class BingoColumn
  attr_reader :cols
  RULES = {
    B: 1,
    I: 16,
    N: 31,
    G: 46,
    O: 61,
  }
  INCR_NUM = 14

  def initialize
    @cols = {}
    create_cols
  end

  private

  def create_cols
    RULES.each do |key, val|
      @cols[key.to_sym] = create_col(val)
    end
  end

  def create_col(rand_s)
    all_nums = (rand_s..rand_s + INCR_NUM).to_a
    all_nums.sample(5)
  end
end

require './create_bingo_card/bingo_decoration_module.rb'

describe 'BingoDecorationModule' do
  let(:test_obj) { Class.new { extend BingoDecorationModule } }

  describe '#add_pipe_at_end' do
    let(:val) {}

    context '正常系' do
      context '引数の値が文字１桁の場合' do
        let (:val) { 'B' }

        it '引数の値を装飾して"  B |"と返却すること' do
          expect(test_obj.add_pipe_at_end(val)).to eq '  B |'
        end
      end
      context '引数の値が数値１桁の場合' do
        let (:val) { '1' }

        it '引数の値を装飾して値を右詰めで"  1 |"と返却すること' do
          expect(test_obj.add_pipe_at_end(val)).to eq '  1 |'
        end
      end
      context '引数の値が数値2桁の場合' do
        let (:val) { '13' }

        it '引数の値を装飾して" 13 |"と返却すること' do
          expect(test_obj.add_pipe_at_end(val)).to eq ' 13 |'
        end
      end
    end
  end
end

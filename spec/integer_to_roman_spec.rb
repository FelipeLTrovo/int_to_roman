require_relative '../commands/integer_to_roman'

describe 'IntegerToRoman' do
  describe "With valid params" do
    it 'is true' do
      cmd_a = IntegerToRoman.new(3).call
      cmd_b = IntegerToRoman.new(39).call
      cmd_c = IntegerToRoman.new(246).call
      cmd_d = IntegerToRoman.new(789).call
      cmd_e = IntegerToRoman.new(2421).call

      expect(cmd_a).to eq('III')
      expect(cmd_b).to eq('XXXIX')
      expect(cmd_c).to eq('CCXLVI')
      expect(cmd_d).to eq('DCCLXXXIX')
      expect(cmd_e).to eq('MMCDXXI')
    end
  end

  describe "With invalid params" do
    it 'is zero' do
      cmd = IntegerToRoman.new(0).call

      expect(cmd).to eq("Roman numerals don't have the number zero.")
    end

    it 'is a string' do
      cmd_a = IntegerToRoman.new("123").call
      cmd_b = IntegerToRoman.new("some text").call

      expect(cmd_a).to eq("Only Integer parameters are allowed.")
      expect(cmd_b).to eq("Only Integer parameters are allowed.")
    end

    it 'is a float' do
      cmd = IntegerToRoman.new(2.5).call

      expect(cmd).to eq("Only Integer parameters are allowed.")
    end
  end
end
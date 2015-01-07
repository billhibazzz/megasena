require_relative '../test_helper'

describe Lottery::MegaSena do

  before do
	  @megasena = Lottery::MegaSena.new
  end

  describe "Should return values from CAIXA" do
    it "should return a contest number" do
      assert_instance_of Fixnum, @megasena.contest
		end

		it "should return an array with the result" do
      assert_instance_of Array,  @megasena.numbers
			assert_equal       6,      @megasena.numbers.size
			assert_equal       1,      @megasena.numbers.map(&:class).uniq.size
		end

	end

end

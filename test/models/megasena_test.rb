require_relative '../test_helper'

describe Lottery::MegaSena do

  before do
    @megasena = Lottery::MegaSena.new
  end

  describe "Should return values from CAIXA" do

    it "should return a contest number" do
      assert_instance_of Fixnum, @megasena.get_contest
    end

    it "should return an array with the result" do
      assert_instance_of Array,  @megasena.get_numbers
      assert_equal       6,      @megasena.get_numbers.size
      assert_equal       1,      @megasena.get_numbers.map(&:class).uniq.size
    end

  end

end

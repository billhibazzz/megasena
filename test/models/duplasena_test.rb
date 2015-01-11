require_relative '../test_helper'

describe Lottery::DuplaSena do

  before do
    @duplasena = Lottery::DuplaSena.new
  end

  describe "Should return values from CAIXA" do

    it "should return a contest number" do
      assert_instance_of Fixnum, @duplasena.get_contest
    end

    it "should return two arrays with the result" do
      assert_instance_of Array,  @duplasena.get_numbers
      assert_equal       2,      @duplasena.get_numbers.size
      assert_equal      12,      @duplasena.get_numbers.flatten.size
      assert_equal       1,      @duplasena.get_numbers.map(&:class).uniq.size
    end

  end

end

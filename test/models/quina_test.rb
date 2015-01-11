require_relative '../test_helper'

describe Lottery::Quina do

  before do
    @quina = Lottery::Quina.new
  end

  describe "Should return values from CAIXA" do

    it "should return a contest number" do
      assert_instance_of Fixnum, @quina.get_contest
    end

    it "should return an array with the result" do
      assert_instance_of Array,  @quina.get_numbers
      assert_equal       5,      @quina.get_numbers.size
      assert_equal       1,      @quina.get_numbers.map(&:class).uniq.size
    end

  end

end

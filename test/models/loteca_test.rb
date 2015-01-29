# encoding: ISO-8859-1
require_relative '../test_helper'

describe Lottery::Loteca do

  before do
    @loteca = Lottery::Loteca.new
  end

  describe "Should return values from CAIXA" do

    it "should return a contest number" do
      assert_instance_of Fixnum, @loteca.get_contest
    end

    it "should return a hash with the result" do
      assert_instance_of Hash,   @loteca.get_numbers
    end

    it "should return Brazilian day name on [Data]" do
      days = ['DOM','SEG','TER','QUA','QUI','SEX','SÁB']
      assert_empty  @loteca.get_numbers.map{|k,v| v[:date] } - days
    end

  end

end

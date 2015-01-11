module Lottery
  class DuplaSena < Lottery::Gamble
    def get_numbers
      super.map { |ul| ul.xpath('li').map(&:content).map(&:to_i).sort }
    end
  end
end

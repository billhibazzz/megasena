module Lottery
  class Quina < Lottery::Gamble
    def get_numbers
      super.map(&:content).map(&:to_i).sort
    end
  end
end

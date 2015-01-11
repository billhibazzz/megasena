module Lottery
  class Loteca < Lottery::Gamble
    def get_numbers

      games = Hash.new
      dom   = path[:etc]

      super.each do |tr|
        games.merge!({
          tr.xpath(dom[:game]).text => {
            :date     => tr.xpath(dom[:date]).text,
            :player1  => { :name => tr.xpath(dom[:player1]).text, :score => tr.xpath(dom[:score_1]).text.to_i },
            :player2  => { :name => tr.xpath(dom[:player2]).text, :score => tr.xpath(dom[:score_2]).text.to_i }
          }
        })
      end

      games

    end
  end
end

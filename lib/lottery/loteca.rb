module Lottery
  class Loteca < Lottery::Gamble
    def get_numbers

      games = Hash.new

      super.each do |tr|
        games.merge!({
          tr.xpath(path[:etc][:game]).text => {
            :date     => tr.xpath(path[:etc][:date]).text,
            :player1  => { :name => tr.xpath(path[:etc][:player1]).text, :score => tr.xpath(path[:etc][:score_1]).text.to_i },
            :player2  => { :name => tr.xpath(path[:etc][:player2]).text, :score => tr.xpath(path[:etc][:score_2]).text.to_i }
          }
        })
      end

      games

    end
  end
end

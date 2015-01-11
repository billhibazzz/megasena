require 'yaml'
require 'mechanize'

module Lottery
  class Gamble
      private
      attr_accessor :contest, :numbers

      def path
        Hash[ YAML::load( File.read(
          File.join( File.dirname(__dir__), '..', 'config', 'contests.yml' )
        ))[ self.class.to_s.downcase.split(/::/).last ].map{|k,v|[k.to_sym,v]} ]
      end

      def initialize 
        page = Mechanize.new.get( path[:url] ).parser
        @contest = page.at("//p").inner_html.scan(/(?=^)\d+/).first.to_i
        @numbers = page.xpath( path[:dom] )
      end

      public
      def get_contest; @contest; end
      def get_numbers; @numbers; end

  end
end

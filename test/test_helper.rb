require 'minitest/autorun'
require_relative '../lib/lottery/gamble'

Dir.glob( File.join File.dirname(__FILE__),'..','lib','lottery', '**/*.rb' )
  .sort_by { |file| file.count "/" }.each { |file| require file }

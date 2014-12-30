require_relative 'lottery/gamble'

# Creates the Database references
Dir.glob( File.join File.dirname(__FILE__),'lottery', '**/*.rb' )
  .sort_by { |file| file.count "/" }.each { |file| require file }

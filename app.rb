require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/mailgun.rb'
require './lib/scrape.rb'


get '/' do
  @train = TrainStatus.new
  @status = @train.status
  erb :index # This tells your program to use the html associated with the index.erb file in your browser.
end

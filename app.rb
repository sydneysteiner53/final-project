require 'bundler'
Bundler.require


require_relative './lib/imbd.rb'

class MyApp < Sinatra::Base

  get '/' do

  	@scraper = Scraper.new

    erb :index
  end

  get '/comedy' do
  	@titles = @scraper.comedy_titles
  	erb :comedy
  end

end
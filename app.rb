require 'bundler'
Bundler.require


require_relative './lib/imbd.rb'

class MyApp < Sinatra::Base

  get '/' do


    erb :index
  end

  get '/comedy' do
  	@scraper = Scraper.new
  	@titles = @scraper.comedy_titles
  	erb :comedy
  end

end
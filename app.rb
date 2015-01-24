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
  	@pictures = @scraper.comedy_pictures
  	erb :comedy
  end

  get '/sport' do
  	@scraper = Scraper.new
  	@titles = @scraper.sport_titles
  	@pictures = @scraper.sport_pictures
  	erb :comedy
  end

  get '/action' do
  	@scraper = Scraper.new
  	@titles = @scraper.action_titles
  	@pictures = @scraper.action_pictures
  	erb :comedy
  end

end
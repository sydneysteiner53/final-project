  require 'nokogiri'
  require 'open-uri'
  require 'pry'

  html = open("http://www.imdb.com/genre/comedy/?ref_=gnr_mn_co_mp")

  comedy = Nokogiri::HTML(html)
   

  comedy.css(".title").each do |movie_title|
 #   movie_title.children.children.first.text
 puts movie_title
  end

 comedy.css(".image").each do |movie|
   movie.comedy.css(".image").children[1].attributes["href"].value
 end
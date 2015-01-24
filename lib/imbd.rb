  require 'nokogiri'
  require 'open-uri'
  require 'pry'


html = open("http://www.imdb.com/genre/comedy/?ref_=gnr_mn_co_mp")


  comedy = Nokogiri::HTML(html)
   

title = []
    comedy.css(".title").each do |movie_title|
        title << movie_title.children.children.first.text

    end
puts title
imdb_action = open("http://www.imdb.com/genre/action")

action = Nokogiri::HTML(imdb_action)

action.css(".article")

imdb_horror = open("http://www.imdb.com/genre/horror")

horror = Nokogiri::HTML(imdb_horror)

horror.css(".article")

picture = []
    horror.css(".image").each do |movie_picture|
        picture << movie_picture.css("a img")

 end
 puts picture



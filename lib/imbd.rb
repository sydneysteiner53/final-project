  require 'nokogiri'
  require 'open-uri'
  require 'pry'

class Scraper

    def initialize
    comedy_html = open("http://www.imdb.com/genre/comedy/?ref_=gnr_mn_co_mp")
    @comedy = Nokogiri::HTML(comedy_html)
   
    imdb_horror = open("http://www.imdb.com/genre/horror")
    @horror = Nokogiri::HTML(imdb_horror)

    imdb_action = open("http://www.imdb.com/genre/action")
    @action = Nokogiri::HTML(imdb_action)
    end

    def comedy_titles
        title = []
        @comedy.css(".title").each do |movie_title|
            title << movie_title.children.children.first.text
        end
        title
    end

    def horror_picures
        picture = []
    @horror.css(".image").each do |movie_picture|
        picture << movie_picture.css("a img")
    end
     picture
    end

puts title

# action.css(".article")
# horror.css(".article")





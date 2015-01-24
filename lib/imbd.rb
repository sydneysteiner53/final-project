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
        comedy_title = []
        @comedy.css(".title").each do |comedy_movie_title|
            comedy_title << comedy_movie_title.children.children.first.text
        end
        comedy_title
    end


    def horror_titles
        horror_title = []
        @horror.css(".title").each do |horror_movie_title|
            horror_title << horror_movie_title.children.children.first.text
        end
        horror_title
    end


    def action_titles
        action_title = []
        @action.css(".title").each do |action_movie_title|
            action_title << action_movie_title.children.children.first.text
        end
        action_title
    end

 
  def comedy_pictures
         comedy_picture = []
        @comedy.css(".image").each do |movie_picture|
            comedy_picture << movie_picture.css("a img")
        end
        comedy_picture
    end

def horror_pictures
         horror_picture = []
        @horror.css(".image").each do |movie_picture|
            horror_picture << movie_picture.css("a img")
        end
        horror_picture
    end

  def action_pictures
         action_picture = []
        @action.css(".image").each do |movie_picture|
            action_picture << movie_picture.css("a img")
        end
        action_picture
    end


end
newscrape = Scraper.new
puts newscrape.comedy_titles






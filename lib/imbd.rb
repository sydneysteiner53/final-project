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

        imdb_romance = open("http://www.imdb.com/genre/romance/?ref_=gnr_mn_ro_mp")
        @romance = Nokogiri::HTML(imdb_romance)

        #feeling lazy
        imdb_sport = open("http://www.imdb.com/genre/sport/?ref_=gnr_mn_sp_mp")
        @sport = Nokogiri::HTML(imdb_sport)
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

    def romance_titles
        romance_title = []
        @romance.css(".title").each do |romance_movie_title|
           romance_title << romance_movie_title.children.children.first.text
        end
        romance_title
    end 

    def sport_titles
        sport_title = []
        @sport.css(".title").each do |sport_movie_title|
            sport_title << sport_movie_title.children.children.first.text
        end
        sport_title
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

def romance_pictures
         romance_picture = []
        @romance.css(".image").each do |movie_picture|
            romance_picture << movie_picture.css("a img")
        end
        action_picture
    end

def sport_pictures
         sport_picture = []
        @sport.css(".image").each do |movie_picture|
            sport_picture << movie_picture.css("a img")
        end
        sport_picture
    end

end
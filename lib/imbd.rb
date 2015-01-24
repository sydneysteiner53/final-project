  require 'nokogiri'
  require 'open-uri'
  require 'pry'

<<<<<<< HEAD
imdb_html = open("http://www.imdb.com/genre/comedy/?ref_=gnr_mn_co_mp")
=======
  html = open("http://www.imdb.com/genre/comedy/?ref_=gnr_mn_co_mp")
>>>>>>> 3adf380689e910110df391cb4e0978ede23cf3ee

  comedy = Nokogiri::HTML(html)

<<<<<<< HEAD
imdb_action = open("http://www.imdb.com/genre/action")

action = Nokogiri::HTML(imdb_action)

action.css(".article")

imdb_horror = open("http://www.imdb.com/genre/horror")

horror = Nokogiri::HTML(imdb_horror)

horror.css(".article")
=======
 comedy.css(".title").each do |movie_title|
   movie_title.children.children.first.text
 end

 comedy.css(".image").each do |movie|
   movie.comedy.css(".image").children[1].attributes["href"].value
 end
>>>>>>> 3adf380689e910110df391cb4e0978ede23cf3ee

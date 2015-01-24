require 'nokogiri'
require 'open-uri'

imdb_html = open("http://www.imdb.com/genre/comedy/?ref_=gnr_mn_co_mp")

comedy = Nokogiri::HTML(imbd_html)

comedy.css(".article")

imdb_action = open("http://www.imdb.com/genre/action")

action = Nokogiri::HTML(imdb_action)

action.css(".article")

imdb_horror = open("http://www.imdb.com/genre/horror")

horror = Nokogiri::HTML(imdb_horror)

horror.css(".article")
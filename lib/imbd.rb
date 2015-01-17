require 'nokogiri'
require 'open-uri'

imbd_html = open("http://www.imdb.com/genre/comedy/?ref_=gnr_mn_co_mp")

comedy = Nokogiri::HTML(imbd_html)

comedy.css(".article")



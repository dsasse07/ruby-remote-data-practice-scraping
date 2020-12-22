require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

doc.css(".site-header__hero__headline")

# puts doc.css(".headline-26OIBN")
class_titles = doc.css(".title-oE5vT4")
class_titles.each {|title| puts title.text}

binding.pry

0
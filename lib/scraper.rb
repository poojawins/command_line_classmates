require 'rubygems'
require 'open-uri'
require 'nokogiri'

class Scraper
  attr_reader :html

  def initialize(url)
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  def get_students_names
    html.search("h3").collect { |h3| h3.text }
  end 

  def get_students_twitters
    html.search("a.twitter").collect {|element| element.text}
  end

  def get_students_blogs
    html.search("a.blog @href").collect { |stuff| stuff.text }
  end

end

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")
puts my_scraper.get_students_names
puts my_scraper.get_students_twitters
puts my_scraper.get_students_blogs


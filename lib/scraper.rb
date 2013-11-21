#require the libraries that we need
require 'open-uri' #open the file on the internet
require 'nokogiri' #line 10,

class Scraper
  attr_reader :html

  def initializer url
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  def get_student_names
    students = html.search("div.face.front h3")
  end

end

#gives us an object-what kind?
my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")
puts my_scraper.get_student_names

#my folder
# => sub-folder

#My folder/sub-folder

#class 
# => class method
# => constant

#class::class_method
#class::constant



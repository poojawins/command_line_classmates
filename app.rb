require './lib/scraper'
require './lib/student'
require 'launchy'

def scrape
  student_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")
  names = student_scraper.get_students_names
  twitters = student_scraper.get_students_twitters
  blogs= student_scraper.get_students_blogs

  students = []
  28.times do |i|
    students << Student.new(names[i], twitters[i], blogs[i])
  end
students

end

# 1. make a new scraper
# 2. get the student names from the scraper
# 3. get the blogs
# 4. get the twitter
# 5. make a new student object for each person

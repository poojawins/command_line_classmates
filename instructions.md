# COMMAND LINE CLASSMATES

##OVERVIEW
We are going to create a command line application that allows you to look up the blog and twitter of your fellow classmates.

To start this project, we are going to scrape data from our student website: http://flatironschool-bk.herokuapp.com/

#DELIVERABLE
Your project should look like this:
```
+ command_line_classmates
  | +lib
      |- scraper.rb
      |- student.rb
  | +spec
      |- student_spec.rb
  |- app.rb
```

Key:
 - `lib` is a folder that holds our classes
  - `scraper.rb` holds our web scraper class
  - `student.rb` is our student class
 - `spec` is a folder that holds our specs
  - `student_spec.rb` is a test for our student class
  - `scraper_spec.rb` is a test for our scraper
  - `app_spec.rb` is a test for our app
 - `app.rb` is our command line app that uses our scraper and our student class 

#Instructions

 1. Scaffold your app to make it match the deliverable.
 2. Get it on github!
 3. Write a test for your student class. It should
    a. be initialized with 3 parameters: `name`, `twitter`, `blog`
    b. these should be readable and writable!
 4. Write your Student class to make your test pass.
 5. Now write your scraper test. It should
    a. be initialized with a URL
    b. have a method to return a student's name
    c. have a method to return a student's blog url
    d. have a method to return a student's twitter url
6. Now write your scraper to make your tests pass.
  
  
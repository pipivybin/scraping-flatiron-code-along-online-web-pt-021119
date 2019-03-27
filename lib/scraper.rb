require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './course.rb'

class Scraper

  def get_page
    html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    doc = Nokogiri::HTML(html)
    doc.css(".post").each {|x|
      course = Course.new
      course.title = x.css("h2").text
      course.schedule = x.css(".date").text
      course.description = x.css("p").text
    }
    binding.pry
  end

  def get_courses
    html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    doc = Nokogiri::HTML(html)
    doc.css(".post").each {|x| x.css("h2").text}
  end
  #
  # def make_courses
  #   self.get_courses.each.tap { |x|
  #   obj = Course.new
  #   obj.title = x.text}
  # end

  #   def print_courses
  #   self.make_courses
  #   Course.all.each do |course|
  #     if course.title
  #       puts "Title: #{course.title}"
  #       puts "  Schedule: #{course.schedule}"
  #       puts "  Description: #{course.description}"
  #     end
  #   end
  # end

end

Scraper.new.get_page

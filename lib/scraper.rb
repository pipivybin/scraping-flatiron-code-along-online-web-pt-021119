require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './course.rb'

class Scraper

  def get_page
    html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    doc = Nokogiri::HTML(html)
    binding.pry
  end



  # def get_courses
  #   html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
  #   doc = Nokogiri::HTML(html)
  #   doc.css("h2").each {|x| puts x}
  # end
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

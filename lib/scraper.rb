require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
     doc = Nokogiri::HTML(open(index_url))
     students = []
      # doc.css("div.roster-cards-container").each do |student_card|
      doc.css(".student-card a").each do |card|
         student_name = card.css("h4").text #.student-name
         student_location = card.css("p").text #.student-location
         student_profile_url = "#{card.attr('href')}"
         students << {name: student_name, location: student_location, profile_url: student_profile_url}
        # end
     end
     students
  end

  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(profile_url))
    student = {}
      doc.css(".social-icon-container")


    student
  end

end

require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
     doc = Nokogiri::HTML(open(index_url))
     students = []
     #binding.pry
     doc.css("div.roster-cards-container").each do |student_card|
       doc.css("div.student-card").each do |card|
         student_name = card.css("h4").text
         student_location = card.css("p").text
         student_profile_url = card.css("./fixtures/student-site/#{student.attr('href')}")
         students << {name: student_name, location: student_location, profile: student_profile_url}
       end
     end
  end

  def self.scrape_profile_page(profile_url)

  end

end

# Scraper.scrape_index_page("http://67.205.165.109:44187/fixtures/student-site/")

require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
     doc = Nokogiri::HTML(open(index_url))
     #binding.pry
     doc.css("div.roster-cards-container").each do |student_card|
       doc.css("div.student-card").each do |student|
         
       end
     end
  end

  def self.scrape_profile_page(profile_url)

  end

end

# Scraper.scrape_index_page("http://67.205.165.109:44187/fixtures/student-site/")

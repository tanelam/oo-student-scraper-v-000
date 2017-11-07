require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
     doc = Nokogiri::HTML(open(index_url))
binding.pry
    #  students = doc.css("div.roster-cards-container").text
    #  student_card = doc.css (".student-card").text
    #         <a href="students/ryan-johnson.html">
    #           <div class="view-profile-div">
    #             <h3 class="view-profile-text">View Profile</h3>
    #           </div>
    #           <div class="card-text-container">
    #             <h4 class="student-name">Ryan Johnson</h4>
    #             <p class="student-location">New York, NY</p>
    #           </div>
    #         </a>
    #       </div>)

  end

  # def self.scrape_profile_page(profile_url)
  #
  # end

end

self.scrape_index_page("http://learn-co-curriculum.github.io/site-for-scraping/courses")

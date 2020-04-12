require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    student_cards = doc.css(".student_card 1")
    student_cards.collect do |card|
      {:name => card.css(".student_name").text,
      :location => card.css(".student_location").text,
      :profile_url => card.attr('href')
      }
    end
  end

  def self.scrape_profile_page(profile_url)
    
  end

end


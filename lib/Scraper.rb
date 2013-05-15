require 'open-uri'
require 'nokogiri'

class Scraper
  

  def self.getTableData (twitterHandle)
    download = open(twitterHandle)

    html = Nokogiri::HTML(download)
    headlines = html.search(".content")
    return headlines
    # table = tables[1]
    # tds = []
    # table.search('tr')[1..4].each do |tr|
    #   tr.search('td').each do |td|
    #     tds.push(td.text)
    #   end
    # end
    # return tds
  end

end

# References
# 
# http://talks.thomaslevine.com/news-hack-day-sf/#cheatsheet
# https://scraperwiki.com/scrapers/unionreports/edit/
# https://scraperwiki.com/docs/ruby/
# https://scraperwiki.com/docs/ruby/tutorials/
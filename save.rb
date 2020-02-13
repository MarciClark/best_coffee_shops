# scraper checker 

require 'nokogiri'
require 'open-uri'

## Replace this with the site you want to try scraping. 
## Make sure it's a string.
site = "https://foursquare.com/top-places/cincinnati/best-coffee-shops"

## When you first edit this file, the page will refresh - don't worry, that's normal and it's just making you your very own copy of the ScraperChecker.

## Now we're asking Nokogiri to go out and get the page data and store it in a variable called doc. Feel free to rename the variable to `page`, `data` or even `giraffe` but remember that descriptive variables are a developers best friend. 
doc = Nokogiri::HTML(open(site))
results = doc.css('div.listing.venue')
# puts results.count

results.each do |r|
  puts r.css('p.venueName').text
end
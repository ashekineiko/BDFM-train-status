require 'nokogiri'
require 'open-uri'

class TrainStatus

# knicks_html = open("https://twitter.com/bdfmtrainstatus")

# knicks_contant = Nokogiri::HTML(knicks_html)

# knicks_contant.css('.Grid .ProfileTweet-contents p').first.text

# @status = knicks_contant.css('.Grid .ProfileTweet-contents p').first.text



	def initialize
		bdfm_html = open("https://twitter.com/bdfmtrainstatus")

		bdfm_contant = Nokogiri::HTML(bdfm_html)

		@status = bdfm_contant.css('.Grid .ProfileTweet-contents p').first.text

	end

	def status 
		@status
	end
end

	
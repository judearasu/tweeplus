class TweetsController < ApplicationController
	def index
		topics = ["linux"]
		TSTREAM.filter(:track => topics.join(",")) do |tweet|
			puts "#{tweet.entities}"
		end
	end
	
end

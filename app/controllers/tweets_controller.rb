class TweetsController < ApplicationController
	def index
		topics = ["coffee", "tea"]
		TSTREAM.filter(:track => topics.join(",")) do |tweet|
			puts "#{tweet.text}"
		end
	end
	
end

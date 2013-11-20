class TweetsController < ApplicationController
	def index
		topics = ["linux","ruby","html5"]
		tweets = []
		TSTREAM.filter(:track => topics.join(",")) do |tweet|
			TweetStore.create(:word=>tweet.user.screen_name,:tweet=>tweet.text)
		end
	end
	
end

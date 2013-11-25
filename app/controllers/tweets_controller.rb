class TweetsController < ApplicationController
	def index
		topics = ["linux","ruby","html5"]
		tweets = []
		TSTREAM.filter(:track => topics.join(",")) do |tweet|
			TweetStore.create(:word=>tweet.user.screen_name,:tweet=>tweet.text,:tweeted_on=>tweet.created_at)
		end
	end
	
end

class TweetStore
  include Mongoid::Document
  field :word, type: String
  field :tweet, type: String

  index({ word: 1 })
end

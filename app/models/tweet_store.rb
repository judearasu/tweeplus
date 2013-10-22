class TweetStore
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :word, type: String
  field :tweet, type: String

  index({ word: 1 })
end


class EmbeddableTweet < ActiveRecord::Base
  default_scope order('tweet_id DESC')
  attr_accessible :tweet_id, :oembed_html, :tweet_timestamp
  self.primary_key = "tweet_id"

  validates :tweet_id, :oembed_html, :tweet_timestamp, presence: true
  validates :tweet_id, uniqueness: true

end

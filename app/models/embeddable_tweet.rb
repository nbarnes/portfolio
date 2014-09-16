
class EmbeddableTweet < ActiveRecord::Base
  default_scope order('tweet_id DESC')
  attr_accessible :tweet_id, :html
  self.primary_key = "tweet_id"

  validates :id, :content, presence: true
  validates :html, :content, presence: true

end

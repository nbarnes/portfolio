class TwitterController < ApplicationController

  def index
    posts = Post.all
    embeddable_tweets = EmbeddableTweet.all

    @blog_entries = Array.new
    @blog_entries.concat(posts).concat(embeddable_tweets)
    @blog_entries.sort!() do |a, b|
      get_sort_value(b) <=> get_sort_value(a)
    end
  end

  def get_sort_value(e)
    if e.is_a? Post
      e.created_at
    elsif e.is_a? EmbeddableTweet
      e.tweet_timestamp
    end
  end

end
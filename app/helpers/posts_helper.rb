module PostsHelper

  def update_local_tweets
    current_max_id = EmbeddableTweet.last.id

    tweet_options = {:include_rts => true, :count => 200, :since_id => current_max_id}
    puts "New tweet"
    new_tweets = $twitter_client.user_timeline('foxbarnes', tweet_options)

    oembed_options = {:omit_script => true}
    new_oembeds = $twitter_client.oembeds(new_tweets, oembed_options)

  # def update_local_tweets
  #   current_local_id = EmbeddableTweet.last.id
  #   remote_tweets = Twitter.since_id(current_local_id)
  #   remote_tweet_ids = remote_tweets.map do |tweet|
  #     tweet.id
  #   end
  #   remote_tweet_ids.each do |remote_tweet_id|
  #     response = Twitter.oembed(remote_tweet_id)
  #     embeddable_tweet = EmbeddableTweet.new(response.id, response.html)
  #     embeddable_tweet.save!
  #   end
  # end

  # def get_most_recent_local_tweet_id
  end

end

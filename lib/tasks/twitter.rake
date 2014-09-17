namespace :twitter do
  desc 'Check for and import new tweets'
  task :import_new_tweets => :environment do
    max_id = local_maximum_id
    puts max_id
    tweet_options = {:include_rts => true, :count => 200, :since_id => local_maximum_id}
    tweets = $twitter_client.user_timeline('foxbarnes', tweet_options)

    oembed_options = {:omit_script => true}

    tweets.map do |tweet|
      tweet_id = tweet.id
      tweet_timestamp = tweet.created_at
      oembed = $twitter_client.oembed(tweet, oembed_options)
      EmbeddableTweet.create({ :tweet_id => tweet_id, :oembed_html => oembed.html, :tweet_timestamp => tweet.created_at })
    end

  end

end

def local_maximum_id
  most_recent_local_tweet = EmbeddableTweet.first
  if most_recent_local_tweet != nil
    EmbeddableTweet.first.id
  else
    1
  end
end

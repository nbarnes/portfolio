namespace :twitter do
  desc 'check for and import new tweets'
  task :import_new_tweets do

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
class TwitterController < ApplicationController

  def index
    tweet_options = {:include_rts => true, :count => 5}
    @tweets = $twitter_client.user_timeline('foxbarnes', tweet_options)

    oembed_options = {:omit_script => true}
    @oembeds = $twitter_client.oembeds(@tweets, oembed_options)
  end

end
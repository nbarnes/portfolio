class TwitterController < ApplicationController

  def index
    username = 'foxbarnes'
    @user = $twitter_client.user(username)
    options = {:include_rts => true, :count => 200}
    @tweets = $twitter_client.user_timeline(username, options)
  end


end
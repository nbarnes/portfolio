class CreateEmbeddableTweets < ActiveRecord::Migration
  def change
    create_table :embeddable_tweets, id: false do |t|

      t.integer :tweet_id, :limit => 8
      t.text :oembed_html
      t.datetime :tweet_timestamp

      t.timestamps

    end
  end
end

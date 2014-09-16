class CreateEmbeddableTweets < ActiveRecord::Migration
  def change
    create_table :embeddable_tweets do |t|

      t.timestamps
      t.integer :tweet_id
      t.text :content

    end
  end
end

class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :content
      t.text :category
      t.text :media_url
      t.text :tweet_id

      t.timestamps
    end
  end
end

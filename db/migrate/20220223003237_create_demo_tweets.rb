class CreateDemoTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :demo_tweets do |t|
      t.references :demo_users, null: false, foreign_key: true
      t.text :context
      t.timestamps
    end
  end
end

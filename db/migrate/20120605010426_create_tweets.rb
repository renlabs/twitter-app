class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet
      t.integer :comments_count, :default => 0
      t.references :user

      t.timestamps
    end
    add_index :tweets, :user_id
  end
end

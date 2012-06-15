class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :user_comment
      t.references :user
      t.references :tweet

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :tweet_id
  end

  def self.down
    drop_table :comments
  end

end

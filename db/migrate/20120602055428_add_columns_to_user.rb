class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :age, :integer
    add_column :users, :sex, :string
    add_column :users, :tweet_count, :integer, :default => 0
  end
end

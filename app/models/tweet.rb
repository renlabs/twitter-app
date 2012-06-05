class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  attr_accessible :comments_count, :tweet
end

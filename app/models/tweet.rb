class Tweet < ActiveRecord::Base
  belongs_to :user
  attr_accessible :comments_count, :tweet
end

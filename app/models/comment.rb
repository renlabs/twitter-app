class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :tweet
  attr_accessible :comment
end

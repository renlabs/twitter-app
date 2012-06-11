class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :dependent => :destroy 
  
  attr_accessible :comments_count, :tweet


end

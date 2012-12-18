class UserRelation < ActiveRecord::Base
  attr_accessible :friend_id, :user_id
  belongs_to :followed1, class_name: :User, foreign_key: :user_id
  belongs_to :follower, class_name: :User, foreign_key: :friend_id
end

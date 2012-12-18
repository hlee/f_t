This is demo of how to use relations of friends of friends of things

use it as below:
```ruby
rails c
User.find(1).friends_friends_things
```

main relations:

```ruby
ass User < ActiveRecord::Base
  attr_accessible :age, :name
  has_many :follower_relations, foreign_key: :user_id, class_name: :UserRelation
  has_many :followed_relations, foreign_key: :friend_id, class_name: :UserRelation
  has_many :followers, through: :follower_relations
  has_many :followeds, through: :followed_relations, source: :followed1
  has_many :things
  def friends 
    (self.followers + self.followeds).uniq
  end

  def friends_friends
    self.friends.collect{|x|x.friends}.flatten.uniq - [self]
  end

  def friends_friends_things
    self.friends_friends.collect{|x|x.things}.flatten.uniq
  end
end
```
relation table as below:

```ruby
class UserRelation < ActiveRecord::Base
  attr_accessible :friend_id, :user_id
  belongs_to :followed1, class_name: :User, foreign_key: :user_id
  belongs_to :follower, class_name: :User, foreign_key: :friend_id
end

```

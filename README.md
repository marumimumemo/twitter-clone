# README

## users table
|Column|Type|Options|
|------|----|-------|
|name|string|index:true, null: false|
|mail|string|unique:true, null; false|
|phone|string|unique:true, null; false|
|password|string|null; false|
|username|string|unique:true, index:true, null: false|
|profile|text|null: false|
|icon_image|text|-------|
|header_image|text|-------|
|address|string|-------|
|url|string|-------|
|birthday|string|-------|

### Association
- has_many :tweets
- has_many :images
- has_many :comments
- has_many :relationships
- has_many :likes
- has_many :retweets
- has_many :votes
- has_many :notifications
- has_many :moments
- has_many :lists, through: :list_users
- has_many :list_users
- has_many :messages
- has_many :chatrooms, through: :chatroom_users
- has_many :chatroom_users

## tweets table
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|user_id|reference|index:true, null: false, foreign_key: true|


### Association
- belongs_to :user
- has_many :images
- has_many :comments
- has_many :likes
- has_many :retweets
- has_many :tags, through: :tweet_tags
- has_many :tweet_tags
- has_many :notifications
- has_many :moments


## images table
|Column|Type|Options|
|------|----|-------|
|image|text|index:true, null: false|
|user_id|reference|index:true, null: false, foreign_key: true|
|tweet_id|reference|foreign_key: true|
|comment_id|reference|foreign_key: true|
|moment_id|reference|foreign_key: true|
|message_id|reference|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet
- belongs_to :comment
- belongs_to :moment
- belongs_to :message


## comments table
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|user_id|reference|index:true, null: false, foreign_key: true|
|tweet_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet
- has_many :images
- has_many :likes
- has_many :retweets
- has_many :tags, through: :comment_tags
- has_many :comment_tags
- has_many :notifications

## relationships table
|Column|Type|Options|
|------|----|-------|
|follower_id|integer|index:true, null: false, foreign_key: true|
|following_id|integer|index:true, null: false, foreign_key: true|

### Association
- belongs_to :user

## likes table
|Column|Type|Options|
|------|----|-------|
|user_id|reference|index:true, null: false, foreign_key: true|
|tweet_id|reference|foreign_key: true|
|comment_id|reference|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet
- belongs_to :comment

## retweets table
|Column|Type|Options|
|------|----|-------|
|user_id|reference|index:true, null: false, foreign_key: true|
|tweet_id|reference|foreign_key: true|
|comment_id|reference|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet
- belongs_to :comment

## votes table
|Column|Type|Options|
|------|----|-------|
|question|text|null: false|
|voting_period|string|null: false|
|answer|text|null: false|
|user_id|reference|null: false, foreign_key: true|
|tweet_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet

## tags table
|Column|Type|Options|
|------|----|-------|
|name|string|index:true, null: false|

### Association
- has_many :tweets,through: :tweet_tags
- has_many :tweet_tags
- has_many :comments,through: :comment_tags
- has_many :comment_tags

## tweet_tags table
|Column|Type|Options|
|------|----|-------|
|tweet_id|reference|null: false, foreign_key: true|
|tag_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :tweet
- belongs_to :tag

## comment_tags table
|Column|Type|Options|
|------|----|-------|
|comment_id|reference|null: false, foreign_key: true|
|tag_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :comment
- belongs_to :tag

## notifications table
|Column|Type|Options|
|------|----|-------|
|notified_by|references|index: true,null: false|
|notified_type|string|null: false|
|user_id|reference|null: false, foreign_key: true|
|tweet_id|reference|foreign_key: true|
|comment_id|reference|foreign_key: true|
|relationship_id|reference|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet
- belongs_to :comment
- belongs_to :relationship

## moments table

|Column|Type|Options|
|------|----|-------|
|title|string|index: true,null: false|
|body |text|null: false|
|user_id|reference|index: true, null: false, foreign_key: true|
|tweet_id|reference|null: false, foreign_key: true|
|image_id|reference|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet
- has_many :images

## lists table

|Column|Type|Options|
|------|----|-------|
|name|string|index: true,null: false|
|body|text  |-------|
|pribacy_type|string|null: false|

### Association
- has_many :users, through: :list_users
- has_many :list_users

## list_users table

|Column|Type|Options|
|------|----|-------|
|list_id|reference|null: false, foreign_key: true|
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :list
- belongs_to :user

## chatrooms table

|Column|Type|Options|
|------|----|-------|
|name|string|index: true,null: false|

### Association
- has_many :messages
- has_many :users, through: :chatroom_users
- has_many :chatroom_users

## chatroom_users table

|Column|Type|Options|
|------|----|-------|
|chatroom_id|reference|null: false, foreign_key: true|
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :chatroom
- belongs_to :user

## messages table

|Column|Type|Options|
|------|----|-------|
|body  |text|null: false|
|user_id|reference|null: false, foreign_key: true|
|chatroom_id|reference|null: false, foreign_key: true|
|image_id|reference|foreign_key: true|


### Association
- belongs_to :user
- belongs_to :chatroom

## spaces table

|Column|Type|Options|
|------|----|-------|
|address|string|index: true, null: false|
|user_id|reference|index: true, null: false, foreign_key: true|
|tweet_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet

-------

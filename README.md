# chat-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique:true|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :messages, groups_users
- has_many :groups,  through:  :groups_users

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|text||
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false, unique: true|
### Association
- has_many :messages, groups_users
- has_many  :users,  through:  :groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group
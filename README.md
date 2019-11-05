# chat-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|user-name|string|null: false, unique:true|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :messages
- has_many :groups,  through:  :users_groups

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|text||
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|group-name|text|null: false, unique: true|
### Association
- has_many :messages
- has_many  :users,  through:  :users_groups

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group
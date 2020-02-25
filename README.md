
## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|groupname|string|null: false|

### Association
- has_many :groups_users
- has_many :users, through: :groups_users
- has_many :things


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|username|string|null: false|
|email|string|null: false, unique: true|
|passworld|string|null: false|

### Association
- has_many :groups_users
- has_many :groups, through: :groups_users
- has_many :things


## thingsテーブル

|Column|Type|Options|
|------|----|-------|
|list|list|null: false|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belong_to :group
- belong_to :user


## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
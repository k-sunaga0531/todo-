class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :things
  validates :name, presence: true, uniqueness: true
end

class Team < ActiveRecord::Base
  belongs_to :account
  has_many :team_memberships
  has_many :users, through: :team_memberships
  has_many :contacts

  validates :name, :account, presence: true
end

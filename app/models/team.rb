class Team < ActiveRecord::Base
  belongs_to :organization
  has_many :team_memberships
  has_many :users, through: :team_memberships
  has_many :contacts
end

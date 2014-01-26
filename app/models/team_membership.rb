class TeamMembership < ActiveRecord::Base
  belongs_to :team
  belongs_to :user

  validates :team, :user, presence: true
end

class User < ActiveRecord::Base
  as_enum :status, [:active, :disabled, :deleted], strings: true
  as_enum :status, [:regular, :manager, :admin], strings: true

  belongs_to :locale
  belongs_to :organization
  has_many :team_memberships
  has_many :teams, through: :team_memberships
  has_many :created_contacts, class_name: "Contact", foreign_key: "creator_id"
  has_many :contacts, foreign_key: "assigned_user_id"
  has_many :appointments
  has_many :emails_sent, as: :from, class_name: "Email", foreign_key: "from_id"
  has_many :emails_received, as: :to, class_name: "Email", foreign_key: "to_id"
  has_many :tasks
  has_many :created_task, class_name: "Task", foreign_key: "creator_id"
  has_many :comments, as: :author
end

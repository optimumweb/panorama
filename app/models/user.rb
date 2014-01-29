class User < ActiveRecord::Base
  as_enum :status, [:active, :disabled, :deleted], strings: true
  as_enum :level, [:regular, :manager, :admin], strings: true

  before_save :set_default_values

  belongs_to :account
  belongs_to :locale
  has_many :addresses, as: :addressable
  has_many :team_memberships, dependent: :destroy
  has_many :teams, through: :team_memberships
  has_many :created_contacts, class_name: "Contact", foreign_key: "creator_id"
  has_many :contacts, foreign_key: "assigned_user_id"
  has_many :appointments
  has_many :emails_sent, as: :from, class_name: "Email", foreign_key: "from_id"
  has_many :emails_received, as: :to, class_name: "Email", foreign_key: "to_id"
  has_many :tasks
  has_many :created_task, class_name: "Task", foreign_key: "creator_id"
  has_many :comments, as: :author

  validates :email, :status, :level, :locale, :first_name, :last_name, :account, presence: true
  validates :email, :first_name, :last_name, length: {minimum: 1}
  validates :email, uniqueness: true, format: {with: /.+@.+\..+/i} # this regex has to be verified
  validates :first_name, :last_name, format: {with: /^[^0-9`!@#\$%\^&*+_=]+$/} # this regex has to be verified too

  private

  def set_default_values
    self.status = 'active' if self.status.nil?
    self.level = 'regular' if self.level.nil?
  end
end

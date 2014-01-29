class Account < ActiveRecord::Base
  as_enum :status, [:active, :disabled, :deleted], strings: true
  as_enum :plan, [:trial, :paid], strings: true

  before_save :set_default_values

  has_many :users
  has_many :teams
  has_many :contacts
  has_many :stages
  has_many :appointments
  has_many :email_layouts
  has_many :email_templates

  validates :name, :status, :plan, presence: true

  private

  def set_default_values
    self.status = 'active' if self.status.nil?
    self.plan = 'trial' if self.plan.nil?
  end
end

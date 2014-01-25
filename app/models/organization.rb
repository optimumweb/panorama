class Organization < ActiveRecord::Base
  as_enum :status, [:active, :disabled, :deleted], strings: true
  as_enum :plan, [:trial, :paid], strings: true

  has_many :users
  has_many :teams
  has_many :contacts
  has_many :stages
  has_many :appointments
  has_many :email_layouts
  has_many :email_templates
end

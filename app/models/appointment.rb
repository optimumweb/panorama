class Appointment < ActiveRecord::Base
  as_enum :status, [:requested, :confirmed, :declined, :missed]

  belongs_to :account
  belongs_to :contact
  belongs_to :user
  belongs_to :organizer, class_name: "User"
  has_one :address, as: :addressable
  has_many :confirmations, class_name: "AppointmentConfirmations"
  has_many :notifications, class_name: "AppointmentNotifications"

  validates :account, :contact, :user, :organizer, :datetime, :status, presence: true
end

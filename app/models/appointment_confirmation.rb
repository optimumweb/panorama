class AppointmentConfirmation < ActiveRecord::Base
  as_enum :type, [:accepted, :declined], strings: true
  as_enum :method, [:email, :phone, :in_person, :other], strings: true

  belongs_to :appointment

  validates :appointment, :type, :method, presence: true
end

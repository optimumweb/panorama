class AppointmentNotification < ActiveRecord::Base
  as_enum :method, [:email, :phone, :in_person, :other], strings: true

  belongs_to :appointment
end

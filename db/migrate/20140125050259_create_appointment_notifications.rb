class CreateAppointmentNotifications < ActiveRecord::Migration
  def change
    create_table :appointment_notifications do |t|
      t.belongs_to :appointment
      t.string :method_cd
      t.timestamps
    end
  end
end

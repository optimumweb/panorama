class CreateAppointmentConfirmations < ActiveRecord::Migration
  def change
    create_table :appointment_confirmations do |t|
      t.belongs_to :appointment
      t.string :type_cd
      t.string :method_cd

      t.timestamps
    end
  end
end

class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :organization
      t.belongs_to :contact
      t.belongs_to :user
      t.belongs_to :organizer
      t.datetime :datetime
      t.belongs_to :address
      t.string :status_cd
      t.timestamps
    end
  end
end

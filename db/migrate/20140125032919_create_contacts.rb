class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :salutation_cd
      t.string :status_cd
      t.belongs_to :stage
      t.decimal :value, precision: 16, scale: 2
      t.integer :quality
      t.belongs_to :locale
      t.string :email
      t.string :tel
      t.datetime :acquired_at
      t.datetime :converted_at
      t.belongs_to :acquisition_method
      t.belongs_to :campaign
      t.string :utm_campaign
      t.string :utm_source
      t.string :utm_medium
      t.string :utm_content
      t.string :utm_term
      t.belongs_to :organization
      t.belongs_to :team
      t.belongs_to :creator
      t.belongs_to :assigned_user
      t.timestamps
    end
  end
end

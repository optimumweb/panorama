class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.belongs_to :from, polymorphic: true
      t.belongs_to :to, polymorphic: true
      t.datetime :sent_at
      t.string :subject
      t.text :body
      t.string :status_cd
      t.belongs_to :creator
      t.belongs_to :account

      t.timestamps
    end
  end
end

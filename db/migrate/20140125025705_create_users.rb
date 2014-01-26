class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :status_cd
      t.string :level_cd
      t.belongs_to :locale
      t.string :first_name
      t.string :last_name
      t.string :title
      t.has_attached_file :avatar
      t.string :tel
      t.belongs_to :account

      t.timestamps
    end
  end
end

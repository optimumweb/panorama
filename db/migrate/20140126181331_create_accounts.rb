class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.has_attached_file :logo
      t.integer :status_cd
      t.integer :plan_cd

      t.timestamps
    end
  end
end

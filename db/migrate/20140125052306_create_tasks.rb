class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :status_cd
      t.boolean :is_urgent
      t.datetime :due_at
      t.belongs_to :taskable, polymorphic: true
      t.belongs_to :creator
      t.belongs_to :user
      t.belongs_to :account


      t.timestamps
    end
  end
end

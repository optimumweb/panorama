class CreateEmailLayouts < ActiveRecord::Migration
  def change
    create_table :email_layouts do |t|
      t.string :name
      t.text :body
      t.belongs_to :creator
      t.belongs_to :account

      t.timestamps
    end
  end
end

class CreateEmailLayouts < ActiveRecord::Migration
  def change
    create_table :email_layouts do |t|
      t.belongs_to :organization
      t.belongs_to :creator
      t.string :name
      t.text :body
      t.timestamps
    end
  end
end

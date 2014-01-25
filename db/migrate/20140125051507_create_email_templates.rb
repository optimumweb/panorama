class CreateEmailTemplates < ActiveRecord::Migration
  def change
    create_table :email_templates do |t|
      t.belongs_to :organization
      t.belongs_to :creator
      t.string :name
      t.string :subject
      t.belongs_to :layout
      t.text :body
      t.timestamps
    end
  end
end

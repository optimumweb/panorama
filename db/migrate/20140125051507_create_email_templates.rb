class CreateEmailTemplates < ActiveRecord::Migration
  def change
    create_table :email_templates do |t|
      t.string :name
      t.string :subject
      t.belongs_to :layout
      t.text :body
      t.belongs_to :creator
      t.belongs_to :account

      t.timestamps
    end
  end
end

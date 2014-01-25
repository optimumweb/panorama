class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.belongs_to :author
      t.belongs_to :commentable, polymorphic: true
      t.timestamps
    end
  end
end

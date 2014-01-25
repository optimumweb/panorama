class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.text :description
      t.integer :order
      t.belongs_to :organization
      t.timestamps
    end
  end
end

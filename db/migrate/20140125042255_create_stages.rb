class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.text :description
      t.integer :rank
      t.belongs_to :account

      t.timestamps
    end
  end
end

class CreateLocales < ActiveRecord::Migration
  def change
    create_table :locales do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end

  # locale code must be unique
  add_index :locales, :code, unique: true
end

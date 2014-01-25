class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street_address_1
      t.string :street_address_2
      t.string :locality
      t.string :region
      t.string :country
      t.belongs_to :addressable, polymorphic: true
      t.timestamps
    end
  end
end

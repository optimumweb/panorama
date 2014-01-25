class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :description
      t.string :type_cd
      t.string :status_cd
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :expected_cost, precision: 16, scale: 2
      t.decimal :actual_cost, precision: 16, scale: 2
      t.timestamps
    end
  end
end

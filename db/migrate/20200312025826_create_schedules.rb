class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer :year, null: false
      t.integer :month, null: false
      t.integer :company_tax, null: false
      t.integer :consumption_tax, null: false
      t.references :company, foreign_key: true
      t.timestamps
    end
  end
end

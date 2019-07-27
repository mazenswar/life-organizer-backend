class CreateMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :months do |t|
      t.string :name
      t.integer :month_number
      t.integer :number_of_days
      t.belongs_to :year, foreign_key: true

      t.timestamps
    end
  end
end

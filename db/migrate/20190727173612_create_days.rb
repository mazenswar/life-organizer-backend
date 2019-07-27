class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.integer :number
      t.belongs_to :month, foreign_key: true

      t.timestamps
    end
  end
end

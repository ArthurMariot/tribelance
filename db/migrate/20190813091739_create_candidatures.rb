class CreateCandidatures < ActiveRecord::Migration[5.2]
  def change
    create_table :candidatures do |t|
      t.references :user, foreign_key: true
      t.references :mission, foreign_key: true
      t.string :cover_letter
      t.integer :end
      t.integer :start
      t.integer :total_price
      t.integer :daily_price
      t.integer :num_of_days

      t.timestamps
    end
  end
end

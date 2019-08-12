class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :description
      t.string :company
      t.string :logo
      t.string :headquarter
      t.integer :daily_price
      t.integer :num_of_days
      t.references :user, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end

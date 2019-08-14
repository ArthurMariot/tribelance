class AddPhotoToMissions < ActiveRecord::Migration[5.2]
  def change
    add_column :missions, :photo, :string
  end
end

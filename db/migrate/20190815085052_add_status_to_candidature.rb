class AddStatusToCandidature < ActiveRecord::Migration[5.2]
  def change
    add_column :candidatures, :status, :string, default: "pending"
  end
end

class AddLinkedinurlToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :linkedinurl, :string
  end
end

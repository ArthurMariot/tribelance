class ChangeNameColumnStartEnd < ActiveRecord::Migration[5.2]
  def change
    rename_column :candidatures, :start, :start_date
    rename_column :candidatures, :end, :end_date
  end
end

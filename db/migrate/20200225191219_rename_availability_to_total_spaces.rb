class RenameAvailabilityToTotalSpaces < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :availability, :total_spaces
  end
end

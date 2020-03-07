class AddGroupIdToNannies < ActiveRecord::Migration[5.2]
  def change
    add_reference :nannies, :group, foreign_key: true
  end
end

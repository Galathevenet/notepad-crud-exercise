class RemoveStatusFromNotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :notes, :status, :boolean
  end
end

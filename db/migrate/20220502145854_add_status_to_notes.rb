class AddStatusToNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :status, :boolean, default: false
  end
end

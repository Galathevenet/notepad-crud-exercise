class AddStatusToNote < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :status, :boolean
  end
end
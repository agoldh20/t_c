class RenameShowtimeColumnInOrder < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :showtime, :time
  end
end

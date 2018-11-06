class RemoveMovieIdColumnFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :movie_id, :integer
    add_column :orders, :showtime_id, :integer
  end
end

class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :showtime
      t.integer :movie_id

      t.timestamps
    end
  end
end
